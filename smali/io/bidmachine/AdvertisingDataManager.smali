###### Class io.bidmachine.AdvertisingDataManager (io.bidmachine.AdvertisingDataManager)
.class public abstract Lio/bidmachine/AdvertisingDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdvertisingDataManager$b;,
        Lio/bidmachine/AdvertisingDataManager$AdvertisingData;,
        Lio/bidmachine/AdvertisingDataManager$c;,
        Lio/bidmachine/AdvertisingDataManager$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/List;

.field public static c:Lio/bidmachine/AdvertisingDataManager$b;

.field public static d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->a:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->b:Ljava/util/List;

    .line 14
    new-instance v1, Lio/bidmachine/AdvertisingDataManager$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/bidmachine/AdvertisingDataManager$c;-><init>(Lio/bidmachine/AdvertisingDataManager$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lio/bidmachine/AdvertisingDataManager$d;

    invoke-direct {v1, v2}, Lio/bidmachine/AdvertisingDataManager$d;-><init>(Lio/bidmachine/AdvertisingDataManager$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 2
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 5
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    return-object v0

    .line 6
    :cond_1a
    :goto_1a
    invoke-static {p0}, Lio/bidmachine/AdvertisingDataManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_b
    const-string v0, "ad_core_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    const-string v1, "uuid"

    invoke-static {p0, v1, v0}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 7
    sget-object p0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_24
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->a:Ljava/lang/String;

    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 11
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    sget-object p0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->c:Lio/bidmachine/AdvertisingDataManager$b;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0, p0}, Lio/bidmachine/AdvertisingDataManager$b;->b(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 4
    sput-object p0, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    return-void

    .line 8
    :cond_d
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdvertisingDataManager$b;

    .line 9
    invoke-virtual {v1, p0}, Lio/bidmachine/AdvertisingDataManager$b;->b(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 11
    sput-object v1, Lio/bidmachine/AdvertisingDataManager;->c:Lio/bidmachine/AdvertisingDataManager$b;

    .line 12
    sput-object v2, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    :cond_29
    return-void
.end method

###### Class io.bidmachine.AdvertisingDataManager.AdvertisingData (io.bidmachine.AdvertisingDataManager$AdvertisingData)
.class public Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvertisingData"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->id:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->limitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->limitAdTrackingEnabled:Z

    return v0
.end method

###### Class io.bidmachine.AdvertisingDataManager.a (io.bidmachine.AdvertisingDataManager$a)
.class public abstract synthetic Lio/bidmachine/AdvertisingDataManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.AdvertisingDataManager.b (io.bidmachine.AdvertisingDataManager$b)
.class public abstract Lio/bidmachine/AdvertisingDataManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/AdvertisingDataManager$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
.end method

.method public a(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdvertisingDataManager$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdvertisingDataManager$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdvertisingDataManager$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 5
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lio/bidmachine/AdvertisingDataManager$b;->a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_c} :catch_12
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    return-object p1

    :catchall_d
    move-exception p1

    .line 10
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_12
    move-exception p1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lio/bidmachine/AdvertisingDataManager$b;->a(Z)V

    .line 12
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :goto_1a
    return-object v1
.end method

###### Class io.bidmachine.AdvertisingDataManager.c (io.bidmachine.AdvertisingDataManager$c)
.class public Lio/bidmachine/AdvertisingDataManager$c;
.super Lio/bidmachine/AdvertisingDataManager$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/AdvertisingDataManager$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 3
    new-instance v0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;-><init>(Ljava/lang/String;Z)V
    :try_end_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/AdvertisingDataManager$b;->a(Z)V

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.AdvertisingDataManager.d (io.bidmachine.AdvertisingDataManager$d)
.class public Lio/bidmachine/AdvertisingDataManager$d;
.super Lio/bidmachine/AdvertisingDataManager$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/AdvertisingDataManager$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 3
    new-instance v0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    invoke-virtual {p1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method
