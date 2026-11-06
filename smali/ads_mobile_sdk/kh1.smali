###### Class ads_mobile_sdk.kh1 (ads_mobile_sdk.kh1)
.class public final Lads_mobile_sdk/kh1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/kh1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8


# instance fields
.field private googlePlayInstant_:Z

.field private installBeginTimestampSeconds_:J

.field private installBeginTimestampServerSeconds_:J

.field private installReferrerErrorCode_:I

.field private installReferrer_:Ljava/lang/String;

.field private installVersion_:Ljava/lang/String;

.field private referrerClickTimestampSeconds_:J

.field private referrerClickTimestampServerSeconds_:J


# direct methods
.method public static bridge synthetic -$$Nest$fputgooglePlayInstant_(Lads_mobile_sdk/kh1;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/kh1;->googlePlayInstant_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinstallBeginTimestampSeconds_(Lads_mobile_sdk/kh1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/kh1;->installBeginTimestampSeconds_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinstallBeginTimestampServerSeconds_(Lads_mobile_sdk/kh1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/kh1;->installBeginTimestampServerSeconds_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinstallReferrerErrorCode_(Lads_mobile_sdk/kh1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/kh1;->installReferrerErrorCode_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputreferrerClickTimestampSeconds_(Lads_mobile_sdk/kh1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/kh1;->referrerClickTimestampSeconds_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputreferrerClickTimestampServerSeconds_(Lads_mobile_sdk/kh1;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/kh1;->referrerClickTimestampServerSeconds_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/kh1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/kh1;->DEFAULT_INSTANCE:Lads_mobile_sdk/kh1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/kh1;

    invoke-direct {v0}, Lads_mobile_sdk/kh1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/kh1;->DEFAULT_INSTANCE:Lads_mobile_sdk/kh1;

    .line 5
    const-class v1, Lads_mobile_sdk/kh1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/kh1;->installReferrer_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lads_mobile_sdk/kh1;->installVersion_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lads_mobile_sdk/ih1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/kh1;->DEFAULT_INSTANCE:Lads_mobile_sdk/kh1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ih1;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object p2, Lads_mobile_sdk/hh1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_46

    const/4 p2, 0x2

    if-eq p1, p2, :cond_40

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_19
    const-class p1, Lads_mobile_sdk/kh1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 29
    :cond_20
    sget-object p1, Lads_mobile_sdk/kh1;->DEFAULT_INSTANCE:Lads_mobile_sdk/kh1;

    return-object p1

    .line 30
    :cond_23
    const-string v6, "installVersion_"

    const-string v7, "installReferrerErrorCode_"

    const-string v0, "installReferrer_"

    const-string v1, "referrerClickTimestampSeconds_"

    const-string v2, "installBeginTimestampSeconds_"

    const-string v3, "googlePlayInstant_"

    const-string v4, "referrerClickTimestampServerSeconds_"

    const-string v5, "installBeginTimestampServerSeconds_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 43
    sget-object p2, Lads_mobile_sdk/kh1;->DEFAULT_INSTANCE:Lads_mobile_sdk/kh1;

    const-string p3, "\u0004\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0002\u0004\u0007\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u000c"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_40
    new-instance p1, Lads_mobile_sdk/ih1;

    invoke-direct {p1}, Lads_mobile_sdk/ih1;-><init>()V

    return-object p1

    .line 45
    :cond_46
    new-instance p1, Lads_mobile_sdk/kh1;

    invoke-direct {p1}, Lads_mobile_sdk/kh1;-><init>()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/kh1;->installReferrer_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/kh1;->installVersion_:Ljava/lang/String;

    return-void
.end method
