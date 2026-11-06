###### Class ads_mobile_sdk.og1 (ads_mobile_sdk.og1)
.class public final Lads_mobile_sdk/og1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9


# instance fields
.field private debugAdUnitId_:Ljava/lang/String;

.field private deviceIdForDebugging_:Ljava/lang/String;

.field private gesture_:I

.field private isGloballyAllowlisted_:Z

.field private isLinkedDevice_:Z

.field private isTestMode_:Z

.field private networkExtrasExpirationSecs_:J

.field private networkExtras_:Ljava/lang/String;

.field private uiStorage_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fputgesture_(Lads_mobile_sdk/og1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/og1;->gesture_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisGloballyAllowlisted_(Lads_mobile_sdk/og1;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/og1;->isGloballyAllowlisted_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisLinkedDevice_(Lads_mobile_sdk/og1;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/og1;->isLinkedDevice_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisTestMode_(Lads_mobile_sdk/og1;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/og1;->isTestMode_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputnetworkExtrasExpirationSecs_(Lads_mobile_sdk/og1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/og1;->networkExtrasExpirationSecs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/og1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/og1;

    invoke-direct {v0}, Lads_mobile_sdk/og1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    .line 5
    const-class v1, Lads_mobile_sdk/og1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/og1;->networkExtras_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lads_mobile_sdk/og1;->deviceIdForDebugging_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lads_mobile_sdk/og1;->debugAdUnitId_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lads_mobile_sdk/og1;->uiStorage_:Ljava/lang/String;

    return-void
.end method

.method public static F()Lads_mobile_sdk/ng1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ng1;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/og1;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/og1;

    return-object p0
.end method

.method public static w()Lads_mobile_sdk/og1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lads_mobile_sdk/og1;->isLinkedDevice_:Z

    return v0
.end method

.method public final B()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lads_mobile_sdk/og1;->isTestMode_:Z

    return v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/og1;->networkExtras_:Ljava/lang/String;

    return-object v0
.end method

.method public final D()J
    .registers 3

    .line 257
    iget-wide v0, p0, Lads_mobile_sdk/og1;->networkExtrasExpirationSecs_:J

    return-wide v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    .line 445
    iget-object v0, p0, Lads_mobile_sdk/og1;->uiStorage_:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 2
    sget-object p2, Lads_mobile_sdk/mg1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_48

    const/4 p2, 0x2

    if-eq p1, p2, :cond_42

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_19
    const-class p1, Lads_mobile_sdk/og1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 31
    :cond_20
    sget-object p1, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    return-object p1

    .line 32
    :cond_23
    const-string v7, "uiStorage_"

    const-string v8, "isGloballyAllowlisted_"

    const-string v0, "isTestMode_"

    const-string v1, "isLinkedDevice_"

    const-string v2, "gesture_"

    const-string v3, "networkExtras_"

    const-string v4, "networkExtrasExpirationSecs_"

    const-string v5, "deviceIdForDebugging_"

    const-string v6, "debugAdUnitId_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 46
    sget-object p2, Lads_mobile_sdk/og1;->DEFAULT_INSTANCE:Lads_mobile_sdk/og1;

    const-string p3, "\u0004\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\u000c\u0004\u0208\u0005\u0002\u0006\u0208\u0007\u0208\u0008\u0208\t\u0007"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :cond_42
    new-instance p1, Lads_mobile_sdk/ng1;

    invoke-direct {p1}, Lads_mobile_sdk/ng1;-><init>()V

    return-object p1

    .line 48
    :cond_48
    new-instance p1, Lads_mobile_sdk/og1;

    invoke-direct {p1}, Lads_mobile_sdk/og1;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/og1;->debugAdUnitId_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/og1;->deviceIdForDebugging_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/og1;->networkExtras_:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/og1;->uiStorage_:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 368
    iget-object v0, p0, Lads_mobile_sdk/og1;->debugAdUnitId_:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lads_mobile_sdk/og1;->deviceIdForDebugging_:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Lads_mobile_sdk/vd1;
    .registers 3

    .line 135
    iget v0, p0, Lads_mobile_sdk/og1;->gesture_:I

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_14

    .line 136
    :cond_c
    sget-object v0, Lads_mobile_sdk/vd1;->d:Lads_mobile_sdk/vd1;

    goto :goto_14

    .line 137
    :cond_f
    sget-object v0, Lads_mobile_sdk/vd1;->c:Lads_mobile_sdk/vd1;

    goto :goto_14

    .line 138
    :cond_12
    sget-object v0, Lads_mobile_sdk/vd1;->b:Lads_mobile_sdk/vd1;

    :goto_14
    if-nez v0, :cond_18

    .line 139
    sget-object v0, Lads_mobile_sdk/vd1;->e:Lads_mobile_sdk/vd1;

    :cond_18
    return-object v0
.end method

.method public final z()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lads_mobile_sdk/og1;->isGloballyAllowlisted_:Z

    return v0
.end method
