###### Class ads_mobile_sdk.hh (ads_mobile_sdk.hh)
.class public final Lads_mobile_sdk/hh;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/hh;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = 0xd

.field public static final p:I = 0xe


# instance fields
.field private automationVerdict_:Lads_mobile_sdk/jh;

.field private bitField0_:I

.field private crowdValidationOutcomes_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/nh;",
            ">;"
        }
    .end annotation
.end field

.field private deviceTrustworthinessDecisionLabel_:J

.field private deviceTrustworthinessLevel_:J

.field private humannessLevel_:J

.field private isBattlestarEmulator_:Z

.field private isInvalidDeviceExperiment_:Z

.field private isInvalidDevice_:Z

.field private malwareClassifications_:Lads_mobile_sdk/yh1$e;

.field private pairId_:J

.field private reasons_:Lads_mobile_sdk/yh1$c;

.field private responseType_:I

.field private suspicious_:Z

.field private timestampMs_:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hh;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/hh;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/hh;

    invoke-direct {v0}, Lads_mobile_sdk/hh;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/hh;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh;

    .line 5
    const-class v1, Lads_mobile_sdk/hh;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2684
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 2685
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hh;->reasons_:Lads_mobile_sdk/yh1$c;

    .line 2686
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hh;->crowdValidationOutcomes_:Lads_mobile_sdk/yh1$f;

    .line 2687
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/hh;->malwareClassifications_:Lads_mobile_sdk/yh1$e;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    .line 1
    sget-object v0, Lads_mobile_sdk/wf;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_19
    const-class v0, Lads_mobile_sdk/hh;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 39
    :cond_20
    sget-object v0, Lads_mobile_sdk/hh;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh;

    return-object v0

    .line 40
    :cond_23
    const-string v15, "isInvalidDevice_"

    const-string v16, "isInvalidDeviceExperiment_"

    const-string v1, "bitField0_"

    const-string v2, "timestampMs_"

    const-string v3, "responseType_"

    const-string v4, "suspicious_"

    const-string v5, "reasons_"

    const-string v6, "pairId_"

    const-string v7, "isBattlestarEmulator_"

    const-string v8, "crowdValidationOutcomes_"

    const-class v9, Lads_mobile_sdk/nh;

    const-string v10, "deviceTrustworthinessLevel_"

    const-string v11, "deviceTrustworthinessDecisionLabel_"

    const-string v12, "humannessLevel_"

    const-string v13, "automationVerdict_"

    const-string v14, "malwareClassifications_"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 63
    sget-object v1, Lads_mobile_sdk/hh;->DEFAULT_INSTANCE:Lads_mobile_sdk/hh;

    const-string v2, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0003\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003\u0006\u1007\u0004\u0007\u001b\u0008\u1002\u0005\t\u1002\u0006\n\u1002\u0007\u000b\u1009\u0008\u000c\u0014\r\u1007\t\u000e\u1007\n"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_50
    new-instance v0, Lads_mobile_sdk/gh;

    invoke-direct {v0}, Lads_mobile_sdk/gh;-><init>()V

    return-object v0

    .line 65
    :cond_56
    new-instance v0, Lads_mobile_sdk/hh;

    invoke-direct {v0}, Lads_mobile_sdk/hh;-><init>()V

    return-object v0
.end method
