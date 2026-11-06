###### Class ads_mobile_sdk.ra0 (ads_mobile_sdk.ra0)
.class public final Lads_mobile_sdk/ra0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field public static final A:I = 0x19

.field public static final B:I = 0x1a

.field public static final C:I = 0x1b

.field public static final D:I = 0x1d

.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ra0;

.field public static final E:I = 0x1e

.field public static final F:I = 0x1f

.field public static final G:I = 0x20

.field public static final H:I = 0x21

.field public static final I:I = 0x22

.field public static final J:I = 0x23

.field public static final K:I = 0x24

.field public static final L:I = 0x25

.field public static final c:I = 0xa

.field public static final d:I = 0xb

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0xc

.field public static final i:I = 0x4

.field public static final j:I = 0x10

.field public static final k:I = 0xd

.field public static final l:I = 0xe

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8

.field public static final q:I = 0x9

.field public static final r:I = 0xf

.field public static final s:I = 0x11

.field public static final t:I = 0x12

.field public static final u:I = 0x13

.field public static final v:I = 0x14

.field public static final w:I = 0x15

.field public static final x:I = 0x16

.field public static final y:I = 0x17

.field public static final z:I = 0x18


# instance fields
.field private bitField0_:I

.field private clickUrl_:Ljava/lang/String;

.field private clientAsn_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientCountry_:Ljava/lang/String;

.field private clientProperties_:Lads_mobile_sdk/aa0;

.field private complete_:Z

.field private creativeProperties_:Lads_mobile_sdk/k80;

.field private didProceed_:Z

.field private disallowedPermissions_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dom_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/va0;",
            ">;"
        }
    .end annotation
.end field

.field private downloadItemInfo_:Lads_mobile_sdk/o80;

.field private downloadVerdict_:I

.field private downloadWarningActions_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/u80;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialInteractions_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/i90;",
            ">;"
        }
    .end annotation
.end field

.field private locale_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private pageUrl_:Ljava/lang/String;

.field private permissionPromptInfo_:Lads_mobile_sdk/k90;

.field private phishySiteInteractions_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/o90;",
            ">;"
        }
    .end annotation
.end field

.field private population_:Lads_mobile_sdk/f80;

.field private referrerChain_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/db0;",
            ">;"
        }
    .end annotation
.end field

.field private referrerUrl_:Ljava/lang/String;

.field private rejectedPermissions_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private renderedAd_:Lads_mobile_sdk/s90;

.field private repeatVisit_:Z

.field private resources_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/y90;",
            ">;"
        }
    .end annotation
.end field

.field private safetyNetId_:Ljava/lang/String;

.field private serviceWorkerBehaviors_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/ea0;",
            ">;"
        }
    .end annotation
.end field

.field private showDownloadInFolder_:Z

.field private token_:Lads_mobile_sdk/du;

.field private type_:I

.field private urlRealTimeAndHashRealTimeDiscrepancyInfo_:Lads_mobile_sdk/ia0;

.field private urlRequestDestination_:I

.field private url_:Ljava/lang/String;

.field private userAgent_:Ljava/lang/String;

.field private userInfo_:Lads_mobile_sdk/ma0;

.field private warningShownInfo_:Lads_mobile_sdk/qa0;

.field private warningShownTimestampMsec_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/ra0;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/ra0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtype_(Lads_mobile_sdk/ra0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/ra0;->type_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ra0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ra0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ra0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ra0;

    invoke-direct {v0}, Lads_mobile_sdk/ra0;-><init>()V

    sput-object v0, Lads_mobile_sdk/ra0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ra0;

    const-class v1, Lads_mobile_sdk/ra0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 46139
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lads_mobile_sdk/ra0;->memoizedIsInitialized:B

    .line 46140
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ra0;->url_:Ljava/lang/String;

    .line 46141
    iput-object v0, p0, Lads_mobile_sdk/ra0;->pageUrl_:Ljava/lang/String;

    .line 46142
    iput-object v0, p0, Lads_mobile_sdk/ra0;->referrerUrl_:Ljava/lang/String;

    .line 46143
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->resources_:Lads_mobile_sdk/yh1$f;

    .line 46144
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->dom_:Lads_mobile_sdk/yh1$f;

    .line 46145
    iput-object v0, p0, Lads_mobile_sdk/ra0;->clickUrl_:Ljava/lang/String;

    .line 46146
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->clientAsn_:Lads_mobile_sdk/yh1$f;

    .line 46147
    iput-object v0, p0, Lads_mobile_sdk/ra0;->clientCountry_:Ljava/lang/String;

    .line 46148
    sget-object v1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v1, p0, Lads_mobile_sdk/ra0;->token_:Lads_mobile_sdk/du;

    .line 46149
    iput-object v0, p0, Lads_mobile_sdk/ra0;->userAgent_:Ljava/lang/String;

    .line 46150
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->disallowedPermissions_:Lads_mobile_sdk/yh1$f;

    .line 46151
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->rejectedPermissions_:Lads_mobile_sdk/yh1$f;

    .line 46152
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->referrerChain_:Lads_mobile_sdk/yh1$f;

    .line 46153
    iput-object v0, p0, Lads_mobile_sdk/ra0;->safetyNetId_:Ljava/lang/String;

    .line 46154
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->downloadWarningActions_:Lads_mobile_sdk/yh1$f;

    .line 46155
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->interstitialInteractions_:Lads_mobile_sdk/yh1$f;

    .line 46156
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/ra0;->phishySiteInteractions_:Lads_mobile_sdk/yh1$f;

    .line 46157
    iput-object v0, p0, Lads_mobile_sdk/ra0;->locale_:Ljava/lang/String;

    .line 46158
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ra0;->serviceWorkerBehaviors_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static v()Lads_mobile_sdk/i80;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ra0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ra0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/i80;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 53

    move-object/from16 v0, p0

    .line 63679
    sget-object v1, Lads_mobile_sdk/r70;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_a0

    return-object v2

    :pswitch_f
    if-nez p2, :cond_13

    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    int-to-byte v1, v1

    iput-byte v1, v0, Lads_mobile_sdk/ra0;->memoizedIsInitialized:B

    return-object v2

    :pswitch_18
    iget-byte v1, v0, Lads_mobile_sdk/ra0;->memoizedIsInitialized:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :pswitch_1f
    const-class v1, Lads_mobile_sdk/ra0;

    invoke-static {v1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v1

    return-object v1

    :pswitch_26
    sget-object v1, Lads_mobile_sdk/ra0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ra0;

    return-object v1

    :pswitch_29
    sget-object v14, Lads_mobile_sdk/t90;->a:Lads_mobile_sdk/t90;

    sget-object v16, Lads_mobile_sdk/g80;->a:Lads_mobile_sdk/g80;

    sget-object v37, Lads_mobile_sdk/ja0;->a:Lads_mobile_sdk/ja0;

    const-string v47, "serviceWorkerBehaviors_"

    const-class v48, Lads_mobile_sdk/ea0;

    const-string v2, "bitField0_"

    const-string v3, "url_"

    const-string v4, "pageUrl_"

    const-string v5, "referrerUrl_"

    const-string v6, "resources_"

    const-class v7, Lads_mobile_sdk/y90;

    const-string v8, "complete_"

    const-string v9, "clientAsn_"

    const-string v10, "clientCountry_"

    const-string v11, "didProceed_"

    const-string v12, "repeatVisit_"

    const-string v13, "type_"

    const-string v15, "downloadVerdict_"

    const-string v17, "creativeProperties_"

    const-string v18, "clickUrl_"

    const-string v19, "renderedAd_"

    const-string v20, "token_"

    const-string v21, "dom_"

    const-class v22, Lads_mobile_sdk/va0;

    const-string v23, "clientProperties_"

    const-string v24, "showDownloadInFolder_"

    const-string v25, "userAgent_"

    const-string v26, "disallowedPermissions_"

    const-string v27, "rejectedPermissions_"

    const-string v28, "userInfo_"

    const-string v29, "referrerChain_"

    const-class v30, Lads_mobile_sdk/db0;

    const-string v31, "downloadItemInfo_"

    const-string v32, "safetyNetId_"

    const-string v33, "population_"

    const-string v34, "downloadWarningActions_"

    const-class v35, Lads_mobile_sdk/u80;

    const-string v36, "urlRequestDestination_"

    const-string v38, "interstitialInteractions_"

    const-class v39, Lads_mobile_sdk/i90;

    const-string v40, "phishySiteInteractions_"

    const-class v41, Lads_mobile_sdk/o90;

    const-string v42, "warningShownTimestampMsec_"

    const-string v43, "warningShownInfo_"

    const-string v44, "permissionPromptInfo_"

    const-string v45, "locale_"

    const-string v46, "urlRealTimeAndHashRealTimeDiscrepancyInfo_"

    filled-new-array/range {v2 .. v48}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/ra0;->DEFAULT_INSTANCE:Lads_mobile_sdk/ra0;

    const-string v3, "\u0001$\u0000\u0001\u0001%$\u0000\n\u0001\u0001\u1008\u0002\u0002\u1008\u0003\u0003\u1008\u0004\u0004\u041b\u0005\u1007\u0008\u0006\u001a\u0007\u1008\t\u0008\u1007\n\t\u1007\u000b\n\u180c\u0000\u000b\u180c\u0001\u000c\u1009\u0005\r\u1008\u0006\u000e\u1009\u0007\u000f\u100a\u000c\u0010\u001b\u0011\u1009\r\u0012\u1007\u000e\u0013\u1008\u000f\u0014\u001a\u0015\u001a\u0016\u1009\u0010\u0017\u001b\u0018\u1009\u0011\u0019\u1008\u0012\u001a\u1009\u0013\u001b\u001b\u001d\u180c\u0014\u001e\u001b\u001f\u001b \u1002\u0015!\u1009\u0016\"\u1009\u0017#\u1008\u0018$\u1009\u0019%\u001b"

    invoke-static {v2, v3, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :pswitch_94
    new-instance v1, Lads_mobile_sdk/i80;

    invoke-direct {v1}, Lads_mobile_sdk/i80;-><init>()V

    return-object v1

    :pswitch_9a
    new-instance v1, Lads_mobile_sdk/ra0;

    invoke-direct {v1}, Lads_mobile_sdk/ra0;-><init>()V

    return-object v1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_94
        :pswitch_29
        :pswitch_26
        :pswitch_1f
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/aa0;)V
    .registers 2

    .line 62622
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62623
    iput-object p1, p0, Lads_mobile_sdk/ra0;->clientProperties_:Lads_mobile_sdk/aa0;

    .line 62624
    iget p1, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    return-void
.end method

.method public final a(Lads_mobile_sdk/k80;)V
    .registers 2

    .line 60676
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60677
    iput-object p1, p0, Lads_mobile_sdk/ra0;->creativeProperties_:Lads_mobile_sdk/k80;

    .line 60678
    iget p1, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    return-void
.end method

.method public final a(Lads_mobile_sdk/y90;)V
    .registers 4

    .line 63673
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63674
    iget-object v0, p0, Lads_mobile_sdk/ra0;->resources_:Lads_mobile_sdk/yh1$f;

    .line 63675
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 63677
    invoke-static {v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ra0;->resources_:Lads_mobile_sdk/yh1$f;

    .line 63678
    :cond_11
    iget-object v0, p0, Lads_mobile_sdk/ra0;->resources_:Lads_mobile_sdk/yh1$f;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/ra0;->clickUrl_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 63484
    iget v0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    .line 63485
    iput-object p1, p0, Lads_mobile_sdk/ra0;->pageUrl_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget v0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/ra0;->bitField0_:I

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ra0;->url_:Ljava/lang/String;

    return-void
.end method
