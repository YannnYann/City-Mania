###### Class io.bidmachine.InstallInfoProvider (io.bidmachine.InstallInfoProvider)
.class public final Lio/bidmachine/InstallInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/InstallInfoProvider$a;
    }
.end annotation


# instance fields
.field private installInfo:Lio/bidmachine/internal/n;

.field private final isInitializeExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$XbxuyTw7tG11pQmVGL7F2L3Z3Cs(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/InstallInfoProvider;->initialize$lambda$0(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/InstallInfoProvider;->isInitializeExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$setInstallInfo$p(Lio/bidmachine/InstallInfoProvider;Lio/bidmachine/internal/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    return-void
.end method

.method public static final synthetic access$toInstallInfo(Lio/bidmachine/InstallInfoProvider;Lcom/android/installreferrer/api/ReferrerDetails;)Lio/bidmachine/internal/n;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/InstallInfoProvider;->toInstallInfo(Lcom/android/installreferrer/api/ReferrerDetails;)Lio/bidmachine/internal/n;

    move-result-object p0

    return-object p0
.end method

.method private final createBySharedPreferences(Landroid/content/Context;)Lio/bidmachine/internal/n;
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/internal/n;

    .line 2
    invoke-static {p1}, Lio/bidmachine/n;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lio/bidmachine/n;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lio/bidmachine/n;->n(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v3

    .line 5
    invoke-static {p1}, Lio/bidmachine/n;->l(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    .line 6
    invoke-static {p1}, Lio/bidmachine/n;->o(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v5

    .line 7
    invoke-static {p1}, Lio/bidmachine/n;->m(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v6

    .line 8
    invoke-static {p1}, Lio/bidmachine/n;->C(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v7

    .line 9
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private final getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    .line 3
    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoUtils;->secToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0

    :cond_1a
    return-object v1
.end method

.method private final getInstallBeginTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    .line 3
    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoUtils;->secToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0

    :cond_1a
    return-object v1
.end method

.method private final getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    .line 3
    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoUtils;->secToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0

    :cond_1a
    return-object v1
.end method

.method private final getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    .line 3
    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoUtils;->secToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0

    :cond_1a
    return-object v1
.end method

.method private final getInstallReferrerUrl()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_11

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getInstallVersion()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_11

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final initialize$lambda$0(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/InstallInfoProvider$a;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/InstallInfoProvider$a;-><init>(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/bidmachine/InstallInfoProvider$a;->a()V

    return-void
.end method

.method private final isGooglePlayInstant()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lio/bidmachine/internal/n;->i()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private final toInstallInfo(Lcom/android/installreferrer/api/ReferrerDetails;)Lio/bidmachine/internal/n;
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/internal/n;

    .line 2
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 8
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 9
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic fill(Lio/bidmachine/protobuf/sdk/App$Builder;)V
    .registers 3

    const-string v0, "appBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->getInstallReferrerUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallReferrerUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 5
    :cond_e
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallVersion(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 9
    :cond_17
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 11
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallReferrerClickTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 13
    :cond_20
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->getInstallBeginTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 15
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 17
    :cond_29
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 19
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallReferrerClickServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 21
    :cond_32
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 23
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallBeginServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 25
    :cond_3b
    invoke-direct {p0}, Lio/bidmachine/InstallInfoProvider;->isGooglePlayInstant()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setIsGooglePlayInstant(Z)Lio/bidmachine/protobuf/sdk/App$Builder;

    :cond_48
    return-void
.end method

.method public final initialize(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider;->isInitializeExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1e

    .line 4
    :cond_10
    invoke-direct {p0, p1}, Lio/bidmachine/InstallInfoProvider;->createBySharedPreferences(Landroid/content/Context;)Lio/bidmachine/internal/n;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/InstallInfoProvider;->installInfo:Lio/bidmachine/internal/n;

    if-eqz v0, :cond_1f

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/internal/n;->h()Z

    move-result v0

    if-ne v0, v2, :cond_1f

    :goto_1e
    return-void

    .line 10
    :cond_1f
    new-instance v0, Ljava/lang/Thread;

    .line 12
    new-instance v1, Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

###### Class io.bidmachine.InstallInfoProvider.a (io.bidmachine.InstallInfoProvider$a)
.class public final Lio/bidmachine/InstallInfoProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/InstallInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/InstallInfoProvider$a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/android/installreferrer/api/InstallReferrerClient;

.field public final synthetic c:Lio/bidmachine/InstallInfoProvider;


# direct methods
.method public constructor <init>(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/InstallInfoProvider$a;->c:Lio/bidmachine/InstallInfoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/InstallInfoProvider$a;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    const-string p2, "newBuilder(applicationCo\u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/InstallInfoProvider$a;->b:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider$a;->b:Lcom/android/installreferrer/api/InstallReferrerClient;

    new-instance v1, Lio/bidmachine/InstallInfoProvider$a$a;

    invoke-direct {v1, p0}, Lio/bidmachine/InstallInfoProvider$a$a;-><init>(Lio/bidmachine/InstallInfoProvider$a;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    .line 4
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.InstallInfoProvider.a.C1101a (io.bidmachine.InstallInfoProvider$a$a)
.class public final Lio/bidmachine/InstallInfoProvider$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/InstallInfoProvider$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/InstallInfoProvider$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/InstallInfoProvider$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/InstallInfoProvider$a$a;->a:Lio/bidmachine/InstallInfoProvider$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.InstallInfoProvider$$ExternalSyntheticLambda0 (io.bidmachine.InstallInfoProvider$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/internal/p;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/InstallInfoProvider;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/InstallInfoProvider;

    iput-object p2, p0, Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/InstallInfoProvider;

    iget-object v1, p0, Lio/bidmachine/InstallInfoProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/InstallInfoProvider;->$r8$lambda$XbxuyTw7tG11pQmVGL7F2L3Z3Cs(Lio/bidmachine/InstallInfoProvider;Landroid/content/Context;)V

    return-void
.end method
