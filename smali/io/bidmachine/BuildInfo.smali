###### Class io.bidmachine.BuildInfo (io.bidmachine.BuildInfo)
.class public final Lio/bidmachine/BuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Lio/bidmachine/BuildInfo;


# instance fields
.field private final isDebuggable:Lio/bidmachine/utils/lazy/LazyCachedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/utils/lazy/LazyCachedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sha1Signature:Ljava/lang/String;

.field private volatile sha256Signature:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$fsomJvulC9enB3WGr0m0XCEwXm0(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/BuildInfo;->sha1Signature:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lio/bidmachine/BuildInfo;->sha256Signature:Ljava/lang/String;

    .line 27
    new-instance v0, Lio/bidmachine/utils/lazy/LazyCachedValue;

    new-instance v1, Lio/bidmachine/BuildInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/bidmachine/BuildInfo$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lio/bidmachine/utils/lazy/LazyCachedValue;-><init>(Lio/bidmachine/utils/lazy/LazyValue;)V

    iput-object v0, p0, Lio/bidmachine/BuildInfo;->isDebuggable:Lio/bidmachine/utils/lazy/LazyCachedValue;

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lio/bidmachine/BuildInfo;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/BuildInfo;->instance:Lio/bidmachine/BuildInfo;

    if-nez v0, :cond_1d

    .line 3
    const-class v1, Lio/bidmachine/BuildInfo;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/BuildInfo;->instance:Lio/bidmachine/BuildInfo;

    if-nez v0, :cond_19

    .line 6
    new-instance v0, Lio/bidmachine/BuildInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/bidmachine/BuildInfo;-><init>(Landroid/content/Context;)V

    .line 7
    sput-object v0, Lio/bidmachine/BuildInfo;->instance:Lio/bidmachine/BuildInfo;

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 9
    :cond_19
    :goto_19
    monitor-exit v1

    return-object v0

    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    throw p0

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public getSha1Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BuildInfo;->sha1Signature:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 3
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->getSha1Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lio/bidmachine/BuildInfo;->sha1Signature:Ljava/lang/String;

    return-object p1

    :cond_b
    return-object v0
.end method

.method public getSha256Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BuildInfo;->sha256Signature:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 3
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->getSha256Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lio/bidmachine/BuildInfo;->sha256Signature:Ljava/lang/String;

    return-object p1

    :cond_b
    return-object v0
.end method

.method public isDebuggable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BuildInfo;->isDebuggable:Lio/bidmachine/utils/lazy/LazyCachedValue;

    invoke-virtual {v0}, Lio/bidmachine/utils/lazy/LazyCachedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.BuildInfo$$ExternalSyntheticLambda0 (io.bidmachine.BuildInfo$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BuildInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BuildInfo$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BuildInfo$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/BuildInfo;->$r8$lambda$fsomJvulC9enB3WGr0m0XCEwXm0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
