###### Class ads_mobile_sdk.f80 (ads_mobile_sdk.f80)
.class public final Lads_mobile_sdk/f80;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/f80;

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

.field private static final polarbearPopulation_converter_:Lads_mobile_sdk/yh1$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$d$a<",
            "Lads_mobile_sdk/wo2;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:I = 0xf

.field public static final r:I = 0x10

.field public static final s:I = 0x11

.field private static final serverExperimentGroups_converter_:Lads_mobile_sdk/yh1$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$d$a<",
            "Lads_mobile_sdk/c80;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:I = 0x12

.field public static final u:I = 0x13


# instance fields
.field private aesbLastUpdateTimeWindowsEpochMicros_:J

.field private bitField0_:I

.field private finchActiveGroup_:Ljava/lang/String;

.field private finchActiveGroups_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAesbEnabled_:Z

.field private isHighRiskUser_:Z

.field private isHistorySyncEnabled_:Z

.field private isIncognito_:Z

.field private isMbbEnabled_:Z

.field private isSignedIn_:Z

.field private isUnderAdvancedProtection_:Z

.field private numberOfLoadedProfiles_:I

.field private numberOfOpenProfiles_:I

.field private numberOfProfiles_:I

.field private pageLoadTokens_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/y70;",
            ">;"
        }
    .end annotation
.end field

.field private polarbearPopulationMemoizedSerializedSize:I

.field private polarbearPopulation_:Lads_mobile_sdk/yh1$c;

.field private profileManagementStatus_:I

.field private serverExperimentGroupsMemoizedSerializedSize:I

.field private serverExperimentGroups_:Lads_mobile_sdk/yh1$c;

.field private userAgent_:Ljava/lang/String;

.field private userPopulation_:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/f80;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/f80;->DEFAULT_INSTANCE:Lads_mobile_sdk/f80;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/s70;

    invoke-direct {v0}, Lads_mobile_sdk/s70;-><init>()V

    sput-object v0, Lads_mobile_sdk/f80;->polarbearPopulation_converter_:Lads_mobile_sdk/yh1$d$a;

    .line 180
    new-instance v0, Lads_mobile_sdk/t70;

    invoke-direct {v0}, Lads_mobile_sdk/t70;-><init>()V

    sput-object v0, Lads_mobile_sdk/f80;->serverExperimentGroups_converter_:Lads_mobile_sdk/yh1$d$a;

    .line 1756
    new-instance v0, Lads_mobile_sdk/f80;

    invoke-direct {v0}, Lads_mobile_sdk/f80;-><init>()V

    .line 1759
    sput-object v0, Lads_mobile_sdk/f80;->DEFAULT_INSTANCE:Lads_mobile_sdk/f80;

    .line 1760
    const-class v1, Lads_mobile_sdk/f80;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 2270
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 2271
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/f80;->finchActiveGroup_:Ljava/lang/String;

    .line 2272
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/f80;->finchActiveGroups_:Lads_mobile_sdk/yh1$f;

    .line 2273
    iput-object v0, p0, Lads_mobile_sdk/f80;->userAgent_:Ljava/lang/String;

    .line 2274
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/f80;->pageLoadTokens_:Lads_mobile_sdk/yh1$f;

    .line 2275
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/f80;->polarbearPopulation_:Lads_mobile_sdk/yh1$c;

    .line 2276
    invoke-static {}, Lads_mobile_sdk/vz0;->i()Lads_mobile_sdk/yh1$c;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/f80;->serverExperimentGroups_:Lads_mobile_sdk/yh1$c;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 30

    .line 1
    sget-object v0, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_68

    const/4 v1, 0x2

    if-eq v0, v1, :cond_62

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_19
    const-class v0, Lads_mobile_sdk/f80;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 49
    :cond_20
    sget-object v0, Lads_mobile_sdk/f80;->DEFAULT_INSTANCE:Lads_mobile_sdk/f80;

    return-object v0

    .line 50
    :cond_23
    sget-object v3, Lads_mobile_sdk/d80;->a:Lads_mobile_sdk/d80;

    sget-object v8, Lads_mobile_sdk/z70;->a:Lads_mobile_sdk/z70;

    sget-object v22, Lads_mobile_sdk/vo2;->a:Lads_mobile_sdk/vo2;

    const-string v24, "serverExperimentGroups_"

    sget-object v25, Lads_mobile_sdk/b80;->a:Lads_mobile_sdk/b80;

    const-string v1, "bitField0_"

    const-string v2, "userPopulation_"

    const-string v4, "isHistorySyncEnabled_"

    const-string v5, "finchActiveGroup_"

    const-string v6, "finchActiveGroups_"

    const-string v7, "profileManagementStatus_"

    const-string v9, "isUnderAdvancedProtection_"

    const-string v10, "isIncognito_"

    const-string v11, "isMbbEnabled_"

    const-string v12, "userAgent_"

    const-string v13, "numberOfProfiles_"

    const-string v14, "numberOfLoadedProfiles_"

    const-string v15, "numberOfOpenProfiles_"

    const-string v16, "isHighRiskUser_"

    const-string v17, "pageLoadTokens_"

    const-class v18, Lads_mobile_sdk/y70;

    const-string v19, "isAesbEnabled_"

    const-string v20, "aesbLastUpdateTimeWindowsEpochMicros_"

    const-string v21, "polarbearPopulation_"

    const-string v23, "isSignedIn_"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    .line 58
    sget-object v1, Lads_mobile_sdk/f80;->DEFAULT_INSTANCE:Lads_mobile_sdk/f80;

    const-string v2, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u180c\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006\t\u1008\u0007\n\u1004\u0008\u000b\u1004\t\u000c\u1004\n\r\u1007\u000b\u000e\u001b\u000f\u1007\u000c\u0010\u1002\r\u0011\u082c\u0012\u1007\u000e\u0013\u082c"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_62
    new-instance v0, Lads_mobile_sdk/u70;

    invoke-direct {v0}, Lads_mobile_sdk/u70;-><init>()V

    return-object v0

    .line 60
    :cond_68
    new-instance v0, Lads_mobile_sdk/f80;

    invoke-direct {v0}, Lads_mobile_sdk/f80;-><init>()V

    return-object v0
.end method
