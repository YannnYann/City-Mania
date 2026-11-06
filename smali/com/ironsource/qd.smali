###### Class com.ironsource.C3805qd (com.ironsource.qd)
.class public Lcom/ironsource/qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Q7;
.implements Lcom/ironsource/Q7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/qd$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CappingManager.IS_DELIVERY_ENABLED"

.field private static final b:Ljava/lang/String; = "CappingManager.IS_CAPPING_ENABLED"

.field private static final c:Ljava/lang/String; = "CappingManager.IS_PACING_ENABLED"

.field private static final d:Ljava/lang/String; = "CappingManager.MAX_NUMBER_OF_SHOWS"

.field private static final e:Ljava/lang/String; = "CappingManager.CAPPING_TYPE"

.field private static final f:Ljava/lang/String; = "CappingManager.SECONDS_BETWEEN_SHOWS"

.field private static final g:Ljava/lang/String; = "CappingManager.CURRENT_NUMBER_OF_SHOWS"

.field private static final h:Ljava/lang/String; = "CappingManager.CAPPING_TIME_THRESHOLD"

.field private static final i:Ljava/lang/String; = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ironsource/rd;)J
    .registers 10

    .line 91
    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/ironsource/qd$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p1, v6, :cond_2f

    const/4 v7, 0x2

    if-eq p1, v7, :cond_22

    goto :goto_3f

    .line 101
    :cond_22
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 102
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 104
    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_3f

    .line 105
    :cond_2f
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x6

    .line 109
    invoke-virtual {v0, p1, v6}, Ljava/util/Calendar;->add(II)V

    .line 118
    :goto_3f
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/ironsource/mediationsdk/IronSource$a;)Ljava/lang/String;
    .registers 3

    .line 164
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne p1, v0, :cond_7

    .line 165
    const-string p1, "Rewarded Video"

    return-object p1

    .line 166
    :cond_7
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne p1, v0, :cond_e

    .line 167
    const-string p1, "Interstitial"

    return-object p1

    .line 168
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne p1, v0, :cond_15

    .line 169
    const-string p1, "Banner"

    return-object p1

    .line 170
    :cond_15
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne p1, v0, :cond_1c

    .line 171
    const-string p1, "Native Ad"

    return-object p1

    .line 173
    :cond_1c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 29
    const-string v0, "CappingManager.IS_PACING_ENABLED"

    invoke-direct {p0, p2, v0, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 37
    const-string v0, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    invoke-direct {p0, p2, v0, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {p1, v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 44
    :cond_1a
    const-string v0, "CappingManager.IS_CAPPING_ENABLED"

    invoke-direct {p0, p2, v0, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 51
    const-string v0, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    invoke-direct {p0, p2, v0, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_65

    .line 62
    const-string v3, "CappingManager.CAPPING_TYPE"

    invoke-direct {p0, p2, v3, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    sget-object v4, Lcom/ironsource/rd;->b:Lcom/ironsource/rd;

    .line 66
    invoke-virtual {v4}, Lcom/ironsource/rd;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {p1, v3, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {}, Lcom/ironsource/rd;->values()[Lcom/ironsource/rd;

    move-result-object v4

    array-length v5, v4

    :goto_47
    if-ge v1, v5, :cond_57

    aget-object v6, v4, v1

    .line 71
    iget-object v7, v6, Lcom/ironsource/rd;->a:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    goto :goto_58

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_57
    const/4 v6, 0x0

    .line 77
    :goto_58
    invoke-direct {p0, v6}, Lcom/ironsource/qd;->a(Lcom/ironsource/rd;)J

    move-result-wide v3

    .line 81
    const-string v1, "CappingManager.CAPPING_TIME_THRESHOLD"

    invoke-direct {p0, p2, v1, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {p1, p2, v3, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_65
    add-int/lit8 v2, v2, 0x1

    .line 90
    invoke-static {p1, v0, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_6a
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/nd;)V
    .registers 7

    .line 119
    invoke-virtual {p4}, Lcom/ironsource/nd;->e()Z

    move-result v0

    .line 121
    const-string v1, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-direct {p0, p2, v1, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v0, :cond_10

    goto :goto_59

    .line 130
    :cond_10
    invoke-virtual {p4}, Lcom/ironsource/nd;->d()Z

    move-result v0

    .line 132
    const-string v1, "CappingManager.IS_CAPPING_ENABLED"

    invoke-direct {p0, p2, v1, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3d

    .line 137
    invoke-virtual {p4}, Lcom/ironsource/nd;->b()I

    move-result v0

    .line 139
    const-string v1, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-direct {p0, p2, v1, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 144
    invoke-virtual {p4}, Lcom/ironsource/nd;->a()Lcom/ironsource/rd;

    move-result-object v0

    .line 146
    const-string v1, "CappingManager.CAPPING_TYPE"

    invoke-direct {p0, p2, v1, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Lcom/ironsource/rd;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_3d
    invoke-virtual {p4}, Lcom/ironsource/nd;->f()Z

    move-result v0

    .line 154
    const-string v1, "CappingManager.IS_PACING_ENABLED"

    invoke-direct {p0, p2, v1, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_59

    .line 159
    invoke-virtual {p4}, Lcom/ironsource/nd;->c()I

    move-result p4

    .line 161
    const-string v0, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-direct {p0, p2, v0, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-static {p1, p2, p4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_59
    :goto_59
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/qd$b;
    .registers 14

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    const-string v2, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-direct {p0, p2, v2, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 14
    invoke-static {p1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    .line 17
    sget-object p1, Lcom/ironsource/qd$b;->a:Lcom/ironsource/qd$b;

    return-object p1

    .line 22
    :cond_14
    const-string v2, "CappingManager.IS_PACING_ENABLED"

    invoke-direct {p0, p2, v2, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 25
    invoke-static {p1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_43

    .line 29
    const-string v2, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    invoke-direct {p0, p2, v2, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {p1, v2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 36
    const-string v2, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-direct {p0, p2, v2, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {p1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sub-long v6, v0, v6

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_43

    .line 44
    sget-object p1, Lcom/ironsource/qd$b;->c:Lcom/ironsource/qd$b;

    return-object p1

    .line 50
    :cond_43
    const-string v2, "CappingManager.IS_CAPPING_ENABLED"

    invoke-direct {p0, p2, v2, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {p1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 57
    const-string v2, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-direct {p0, p2, v2, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {p1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 63
    const-string v6, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    invoke-direct {p0, p2, v6, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {p1, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 70
    const-string v8, "CappingManager.CAPPING_TIME_THRESHOLD"

    invoke-direct {p0, p2, v8, p3}, Lcom/ironsource/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-static {p1, p2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p3, v0, v8

    if-ltz p3, :cond_78

    .line 78
    invoke-static {p1, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 79
    invoke-static {p1, p2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_7d

    :cond_78
    if-lt v7, v2, :cond_7d

    .line 82
    sget-object p1, Lcom/ironsource/qd$b;->b:Lcom/ironsource/qd$b;

    return-object p1

    .line 87
    :cond_7d
    :goto_7d
    sget-object p1, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/qd$b;
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_9

    .line 1
    :try_start_3
    sget-object p1, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    goto :goto_31

    :cond_9
    if-nez p2, :cond_f

    .line 5
    :try_start_b
    sget-object p1, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_7

    monitor-exit p0

    return-object p1

    .line 8
    :cond_f
    :try_start_f
    invoke-direct {p0, p3}, Lcom/ironsource/qd;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p2}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 11
    sget-object p1, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_7

    monitor-exit p0

    return-object p1

    .line 15
    :cond_1d
    :try_start_1d
    invoke-virtual {p2}, Lcom/ironsource/t3;->a()Lcom/ironsource/nd;

    move-result-object v0

    if-nez v0, :cond_27

    .line 17
    sget-object p1, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_7

    monitor-exit p0

    return-object p1

    .line 20
    :cond_27
    :try_start_27
    invoke-virtual {p2}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/ironsource/qd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/qd$b;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_7

    monitor-exit p0

    return-object p1

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_7

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    if-nez p2, :cond_9

    monitor-exit p0

    return-void

    .line 21
    :cond_9
    :try_start_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_1a

    if-eqz v0, :cond_11

    monitor-exit p0

    return-void

    .line 25
    :cond_11
    :try_start_11
    invoke-direct {p0, p3}, Lcom/ironsource/qd;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Ljava/lang/String;

    move-result-object p3

    .line 27
    invoke-direct {p0, p1, p3, p2}, Lcom/ironsource/qd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_1e

    if-nez p2, :cond_6

    goto :goto_1e

    .line 1
    :cond_6
    :try_start_6
    invoke-virtual {p2}, Lcom/ironsource/t3;->a()Lcom/ironsource/nd;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1b

    if-nez v0, :cond_e

    monitor-exit p0

    return-void

    .line 6
    :cond_e
    :try_start_e
    invoke-direct {p0, p3}, Lcom/ironsource/qd;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p2}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/ironsource/qd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/nd;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Z
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/qd;->a(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/qd$b;

    move-result-object p1

    sget-object p2, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eq p1, p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

###### Class com.ironsource.C3805qd.a (com.ironsource.qd$a)
.class synthetic Lcom/ironsource/qd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/rd;->values()[Lcom/ironsource/rd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/qd$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/rd;->b:Lcom/ironsource/rd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/qd$a;->a:[I

    sget-object v1, Lcom/ironsource/rd;->c:Lcom/ironsource/rd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.ironsource.C3805qd.b (com.ironsource.qd$b)
.class public final enum Lcom/ironsource/qd$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/qd$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/qd$b;

.field public static final enum b:Lcom/ironsource/qd$b;

.field public static final enum c:Lcom/ironsource/qd$b;

.field public static final enum d:Lcom/ironsource/qd$b;

.field private static final synthetic e:[Lcom/ironsource/qd$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/qd$b;

    const-string v1, "CAPPED_PER_DELIVERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/qd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/qd$b;->a:Lcom/ironsource/qd$b;

    .line 2
    new-instance v0, Lcom/ironsource/qd$b;

    const-string v1, "CAPPED_PER_COUNT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/qd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/qd$b;->b:Lcom/ironsource/qd$b;

    .line 3
    new-instance v0, Lcom/ironsource/qd$b;

    const-string v1, "CAPPED_PER_PACE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/qd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/qd$b;->c:Lcom/ironsource/qd$b;

    .line 4
    new-instance v0, Lcom/ironsource/qd$b;

    const-string v1, "NOT_CAPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/qd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;

    .line 5
    invoke-static {}, Lcom/ironsource/qd$b;->a()[Lcom/ironsource/qd$b;

    move-result-object v0

    sput-object v0, Lcom/ironsource/qd$b;->e:[Lcom/ironsource/qd$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/qd$b;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/qd$b;->a:Lcom/ironsource/qd$b;

    sget-object v1, Lcom/ironsource/qd$b;->b:Lcom/ironsource/qd$b;

    sget-object v2, Lcom/ironsource/qd$b;->c:Lcom/ironsource/qd$b;

    sget-object v3, Lcom/ironsource/qd$b;->d:Lcom/ironsource/qd$b;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/qd$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/qd$b;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/qd$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/qd$b;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/qd$b;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/qd$b;->e:[Lcom/ironsource/qd$b;

    invoke-virtual {v0}, [Lcom/ironsource/qd$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/qd$b;

    return-object v0
.end method
