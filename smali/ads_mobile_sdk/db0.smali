###### Class ads_mobile_sdk.db0 (ads_mobile_sdk.db0)
.class public final Lads_mobile_sdk/db0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/db0;

.field public static final c:I = 0x1

.field public static final d:I = 0x9

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x8

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = 0xd

.field public static final p:I = 0xe


# instance fields
.field private bitField0_:I

.field private ipAddresses_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRetargeting_:Z

.field private isSubframeReferrerUrlRemoved_:Z

.field private isSubframeUrlRemoved_:Z

.field private isUrlRemovedByPolicy_:Z

.field private mainFrameUrl_:Ljava/lang/String;

.field private maybeLaunchedByExternalApplication_:Z

.field private navigationInitiation_:I

.field private navigationTimeMsec_:D

.field private referrerMainFrameUrl_:Ljava/lang/String;

.field private referrerUrl_:Ljava/lang/String;

.field private serverRedirectChain_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ab0;",
            ">;"
        }
    .end annotation
.end field

.field private type_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/db0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/db0;->DEFAULT_INSTANCE:Lads_mobile_sdk/db0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/db0;

    invoke-direct {v0}, Lads_mobile_sdk/db0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/db0;->DEFAULT_INSTANCE:Lads_mobile_sdk/db0;

    .line 5
    const-class v1, Lads_mobile_sdk/db0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21362
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 21363
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/db0;->url_:Ljava/lang/String;

    .line 21364
    iput-object v0, p0, Lads_mobile_sdk/db0;->mainFrameUrl_:Ljava/lang/String;

    const/4 v1, 0x4

    .line 21365
    iput v1, p0, Lads_mobile_sdk/db0;->type_:I

    .line 21366
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/db0;->ipAddresses_:Lads_mobile_sdk/yh1$f;

    .line 21367
    iput-object v0, p0, Lads_mobile_sdk/db0;->referrerUrl_:Ljava/lang/String;

    .line 21368
    iput-object v0, p0, Lads_mobile_sdk/db0;->referrerMainFrameUrl_:Ljava/lang/String;

    .line 21369
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/db0;->serverRedirectChain_:Lads_mobile_sdk/yh1$f;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    .line 1
    sget-object v0, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_19
    const-class v0, Lads_mobile_sdk/db0;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 41
    :cond_20
    sget-object v0, Lads_mobile_sdk/db0;->DEFAULT_INSTANCE:Lads_mobile_sdk/db0;

    return-object v0

    .line 42
    :cond_23
    sget-object v4, Lads_mobile_sdk/bb0;->a:Lads_mobile_sdk/bb0;

    sget-object v14, Lads_mobile_sdk/xa0;->a:Lads_mobile_sdk/xa0;

    const-string v17, "isSubframeReferrerUrlRemoved_"

    const-string v18, "isUrlRemovedByPolicy_"

    const-string v1, "bitField0_"

    const-string v2, "url_"

    const-string v3, "type_"

    const-string v5, "ipAddresses_"

    const-string v6, "referrerUrl_"

    const-string v7, "referrerMainFrameUrl_"

    const-string v8, "isRetargeting_"

    const-string v9, "navigationTimeMsec_"

    const-string v10, "serverRedirectChain_"

    const-class v11, Lads_mobile_sdk/ab0;

    const-string v12, "mainFrameUrl_"

    const-string v13, "navigationInitiation_"

    const-string v15, "maybeLaunchedByExternalApplication_"

    const-string v16, "isSubframeUrlRemoved_"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    .line 53
    sget-object v1, Lads_mobile_sdk/db0;->DEFAULT_INSTANCE:Lads_mobile_sdk/db0;

    const-string v2, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0002\u0003\u001a\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1007\u0005\u0007\u1000\u0006\u0008\u001b\t\u1008\u0001\n\u180c\u0007\u000b\u1007\u0008\u000c\u1007\t\r\u1007\n\u000e\u1007\u000b"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 54
    :cond_54
    new-instance v0, Lads_mobile_sdk/wa0;

    invoke-direct {v0}, Lads_mobile_sdk/wa0;-><init>()V

    return-object v0

    .line 55
    :cond_5a
    new-instance v0, Lads_mobile_sdk/db0;

    invoke-direct {v0}, Lads_mobile_sdk/db0;-><init>()V

    return-object v0
.end method
