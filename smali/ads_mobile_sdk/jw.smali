###### Class ads_mobile_sdk.jw (ads_mobile_sdk.jw)
.class public final Lads_mobile_sdk/jw;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/jw;

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


# instance fields
.field private bitField0_:I

.field private compression_:I

.field private downloadPath_:Ljava/lang/String;

.field private downloadPriority_:I

.field private fallbackDownloadPath_:Ljava/lang/String;

.field private fallbackInstruction_:Lads_mobile_sdk/iw;

.field private id_:Ljava/lang/String;

.field private meteredAllowed_:Z

.field private name_:Ljava/lang/String;

.field private postProcess_:Lads_mobile_sdk/pw;

.field private roamingAllowed_:Z

.field private state_:I

.field private type_:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/jw;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/jw;->DEFAULT_INSTANCE:Lads_mobile_sdk/jw;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/jw;

    invoke-direct {v0}, Lads_mobile_sdk/jw;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/jw;->DEFAULT_INSTANCE:Lads_mobile_sdk/jw;

    .line 5
    const-class v1, Lads_mobile_sdk/jw;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1624
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 1625
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/jw;->name_:Ljava/lang/String;

    .line 1626
    iput-object v0, p0, Lads_mobile_sdk/jw;->id_:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1627
    iput v1, p0, Lads_mobile_sdk/jw;->state_:I

    .line 1628
    iput-object v0, p0, Lads_mobile_sdk/jw;->downloadPath_:Ljava/lang/String;

    .line 1629
    iput-object v0, p0, Lads_mobile_sdk/jw;->fallbackDownloadPath_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    .line 1
    sget-object v0, Lads_mobile_sdk/fw;->a:[I

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

    .line 37
    :cond_19
    const-class v0, Lads_mobile_sdk/jw;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 38
    :cond_20
    sget-object v0, Lads_mobile_sdk/jw;->DEFAULT_INSTANCE:Lads_mobile_sdk/jw;

    return-object v0

    .line 39
    :cond_23
    sget-object v5, Lads_mobile_sdk/uw;->a:Lads_mobile_sdk/uw;

    sget-object v7, Lads_mobile_sdk/sw;->a:Lads_mobile_sdk/sw;

    sget-object v13, Lads_mobile_sdk/kw;->a:Lads_mobile_sdk/kw;

    const-string v15, "fallbackDownloadPath_"

    const-string v16, "fallbackInstruction_"

    const-string v1, "bitField0_"

    const-string v2, "name_"

    const-string v3, "id_"

    const-string v4, "type_"

    const-string v6, "state_"

    const-string v8, "meteredAllowed_"

    const-string v9, "downloadPath_"

    const-string v10, "roamingAllowed_"

    const-string v11, "downloadPriority_"

    const-string v12, "compression_"

    const-string v14, "postProcess_"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 48
    sget-object v1, Lads_mobile_sdk/jw;->DEFAULT_INSTANCE:Lads_mobile_sdk/jw;

    const-string v2, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u1007\u0004\u0006\u1008\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u180c\u0008\n\u1009\t\u000b\u1008\n\u000c\u1009\u000b"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_50
    new-instance v0, Lads_mobile_sdk/gw;

    invoke-direct {v0}, Lads_mobile_sdk/gw;-><init>()V

    return-object v0

    .line 50
    :cond_56
    new-instance v0, Lads_mobile_sdk/jw;

    invoke-direct {v0}, Lads_mobile_sdk/jw;-><init>()V

    return-object v0
.end method
