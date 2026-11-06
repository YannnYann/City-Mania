###### Class io.bidmachine.n (io.bidmachine.n)
.class public abstract Lio/bidmachine/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/T;

.field public static b:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$TcaQ8-pRDvOnemEq2zdcKT0M8J0(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/n;->a(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/T;

    invoke-direct {v0}, Lio/bidmachine/internal/T;-><init>()V

    sput-object v0, Lio/bidmachine/n;->a:Lio/bidmachine/internal/T;

    return-void
.end method

.method public static A(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "bid_machine_ifv"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static B(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->v(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lio/bidmachine/n;->g(Landroid/content/Context;I)V

    return-void
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "is_google_play_instant"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/core/UtilsKt;->convertToBooleanOrNull(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static D(Landroid/content/Context;)J
    .registers 6

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    const-string v0, "first_app_launch_ms"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_11

    return-wide v3

    .line 6
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-wide v1
.end method

.method public static E(Landroid/content/Context;)J
    .registers 10

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 2
    const-string v2, "last_bootup_time"

    invoke-static {p0, v2, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long v5, v0, v3

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-lez v5, :cond_29

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-wide v3

    :cond_29
    return-wide v0
.end method

.method public static F(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/n;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_d

    .line 2
    const-string v0, "BidMachinePref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lio/bidmachine/n;->b:Landroid/content/SharedPreferences;

    .line 4
    :cond_d
    sget-object p0, Lio/bidmachine/n;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    const-wide/16 v0, -0x1

    .line 113
    invoke-static {p0, p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide p0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_f

    .line 115
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 52
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/util/List;
    .registers 6

    .line 9
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lio/bidmachine/n;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object v0

    .line 13
    :cond_1f
    :goto_1f
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 16
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_44

    goto :goto_48

    .line 19
    :cond_44
    invoke-virtual {v1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 22
    :cond_48
    :goto_48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-static {p0, p1}, Lio/bidmachine/n;->a(Landroid/content/SharedPreferences;Ljava/util/List;)V

    return-object p1
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 3

    .line 24
    const-string v0, "last_bootup_history"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 29
    :cond_13
    :try_start_13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/util/Utils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lio/bidmachine/util/Utils;->toLongOrNull(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3e

    goto :goto_29

    :cond_3d
    return-object v0

    .line 39
    :catchall_3e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)Lkotlin/Unit;
    .registers 4

    .line 1
    const-string v0, "bid_machine_ifv"

    invoke-static {p2, v0, p0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "bid_machine_ifv_ttl_session_count_remaining"

    invoke-static {p2, p1, p0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putIntOrRemove(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/SharedPreferences$Editor;

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-static {p0}, Lio/bidmachine/n;->f(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lio/bidmachine/n;->f(Landroid/content/Context;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_9

    .line 4
    :cond_3
    invoke-static {p0}, Lio/bidmachine/n;->e(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    sub-int/2addr v0, p1

    .line 8
    invoke-static {v0}, Lio/bidmachine/util/MathUtils;->nonNegative(I)I

    move-result p1

    invoke-static {p0, p1}, Lio/bidmachine/n;->e(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/internal/S;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 54
    sget-object v0, Lio/bidmachine/n;->a:Lio/bidmachine/internal/T;

    invoke-virtual {v0, p1}, Lio/bidmachine/internal/T;->a(Lio/bidmachine/internal/S;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 56
    :goto_e
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "current_version_milestone"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/internal/y;)V
    .registers 3

    const-string v0, "restriction_mode"

    if-nez p1, :cond_c

    .line 106
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_c
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 111
    invoke-virtual {p1}, Lio/bidmachine/internal/y;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 112
    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putIntOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V
    .registers 3

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "init_extras"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .registers 5

    .line 42
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initData"

    invoke-static {v0, v1, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "init_data_session_id"

    invoke-static {p0, p1, p2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 4

    .line 49
    invoke-static {p0, p1}, Lio/bidmachine/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lio/bidmachine/utils/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p2, p3}, Lio/bidmachine/n;->c(Landroid/content/Context;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "history_version_milestone_list"

    if-eqz v0, :cond_10

    .line 58
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_10
    sget-object v0, Lio/bidmachine/n;->a:Lio/bidmachine/internal/T;

    invoke-virtual {v0, p1}, Lio/bidmachine/internal/T;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/util/List;)V
    .registers 3

    .line 40
    invoke-static {p1}, Lio/bidmachine/util/Utils;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "last_bootup_history"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v1, Lio/bidmachine/n$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/n$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->edit(Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 1

    .line 8
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->clear(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static b(Landroid/content/Context;J)V
    .registers 3

    .line 4
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 7
    const-string p2, "sdk_install_time"

    invoke-static {p0, p2, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ua"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "init_extras"

    invoke-static {p0, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p0}, Lio/bidmachine/n;->e(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lio/bidmachine/n;->e(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;J)V
    .registers 3

    .line 4
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 7
    const-string p2, "ua_exp"

    invoke-static {p0, p2, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ua_device_os"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)J
    .registers 4

    .line 11
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "anr_tracker_start_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    const-string v1, "bid_machine_ifv"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    return-object v0

    .line 6
    :cond_12
    invoke-static {p0, p1}, Lio/bidmachine/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;J)V
    .registers 3

    .line 7
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 10
    const-string p2, "anr_tracker_start_time"

    invoke-static {p0, p2, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "bid_machine_ifv_ttl_session_count_remaining"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;I)V
    .registers 3

    .line 2
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4
    invoke-static {p1}, Lio/bidmachine/util/MathUtils;->nonNegative(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5
    const-string v0, "bid_machine_ifv_ttl_session_count_remaining"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putIntOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static e(Landroid/content/Context;J)V
    .registers 3

    .line 6
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 9
    const-string p2, "current_session_duration"

    invoke-static {p0, p2, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)J
    .registers 4

    .line 5
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "current_session_duration"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lio/bidmachine/util/MathUtils;->nonNegative(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    const-string v0, "bid_machine_ifv_last_ttl_session_count"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putIntOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static f(Landroid/content/Context;J)V
    .registers 3

    .line 6
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 9
    const-string p2, "last_session_duration"

    invoke-static {p0, p2, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putLongOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Lio/bidmachine/internal/S;
    .registers 3

    .line 2
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "current_version_milestone"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-object v1

    .line 9
    :cond_12
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object p0, Lio/bidmachine/n;->a:Lio/bidmachine/internal/T;

    invoke-virtual {p0, v0}, Lio/bidmachine/internal/T;->a(Lorg/json/JSONObject;)Lio/bidmachine/internal/S;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    return-object p0

    :catchall_1e
    return-object v1
.end method

.method public static g(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "session_count"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putIntOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "history_version_milestone_list"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 8
    :cond_14
    :try_start_14
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object p0, Lio/bidmachine/n;->a:Lio/bidmachine/internal/T;

    invoke-virtual {p0, v0}, Lio/bidmachine/internal/T;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    return-object p0

    .line 11
    :catchall_20
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Lio/bidmachine/protobuf/Extras;
    .registers 5

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    const-string v0, "init_extras"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :try_start_c
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/protobuf/Extras;->parseFrom([B)Lio/bidmachine/protobuf/Extras;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    return-object p0

    .line 6
    :catch_15
    invoke-static {p0, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-object v1
.end method

.method public static j(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;
    .registers 5

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    const-string v0, "initData"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :try_start_c
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/protobuf/InitResponse;->parseFrom([B)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    return-object p0

    .line 6
    :catch_15
    invoke-static {p0, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-object v1
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "init_data_session_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    .line 7
    :cond_e
    const-string p0, ""

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/Long;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_begin_sec"

    invoke-static {p0, v0}, Lio/bidmachine/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/Long;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_begin_server_sec"

    invoke-static {p0, v0}, Lio/bidmachine/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/Long;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_referrer_click_sec"

    invoke-static {p0, v0}, Lio/bidmachine/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/Long;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_referrer_click_server_sec"

    invoke-static {p0, v0}, Lio/bidmachine/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_referrer_url"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_version"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "bid_machine_ifv_last_ttl_session_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static s(Landroid/content/Context;)J
    .registers 4

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_session_duration"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static t(Landroid/content/Context;)Lio/bidmachine/internal/y;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "restriction_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/internal/y;->a(Ljava/lang/Integer;)Lio/bidmachine/internal/y;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)J
    .registers 4

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "sdk_install_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static v(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "session_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ua"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ua_device_os"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/content/Context;)J
    .registers 4

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->F(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ua_exp"

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lio/bidmachine/n;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 3
    invoke-static {}, Lio/bidmachine/utils/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/bidmachine/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 4
    invoke-static {p0}, Lio/bidmachine/n;->y(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gtz p0, :cond_25

    goto :goto_26

    :cond_25
    return-object v0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

###### Class io.bidmachine.n$$ExternalSyntheticLambda0 (io.bidmachine.n$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/n$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/n$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lio/bidmachine/n$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/n$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget v1, p0, Lio/bidmachine/n$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-static {v0, v1, p1}, Lio/bidmachine/n;->$r8$lambda$TcaQ8-pRDvOnemEq2zdcKT0M8J0(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
