###### Class ads_mobile_sdk.na (ads_mobile_sdk.na)
.class public final Lads_mobile_sdk/na;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field public static final A:I = 0x1a

.field public static final B:I = 0x1b

.field public static final C:I = 0x1c

.field public static final D:I = 0x1d

.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/na;

.field public static final c:I = 0x1

.field public static final d:I = 0x16

.field public static final e:I = 0x9

.field public static final f:I = 0x17

.field public static final g:I = 0x18

.field public static final h:I = 0x3

.field public static final i:I = 0x19

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:I = 0x12

.field public static final n:I = 0x7

.field public static final o:I = 0x8

.field public static final p:I = 0xa

.field public static final q:I = 0xb

.field public static final r:I = 0xc

.field public static final s:I = 0xd

.field public static final t:I = 0xe

.field public static final u:I = 0xf

.field public static final v:I = 0x10

.field public static final w:I = 0x11

.field public static final x:I = 0x13

.field public static final y:I = 0x14

.field public static final z:I = 0x15


# instance fields
.field private allowFallbackToStaticProgram_:Z

.field private allowFallback_:Z

.field private appStartQuerySignalsTimeoutMs_:J

.field private appStartWindowMs_:J

.field private bitField0_:I

.field private cancelQueuedSignalTaskOnTimeout_:Z

.field private clearDgArgsAfterUse_:Z

.field private debugInstallerCert_:Ljava/lang/String;

.field private enableAsyncInputEventProcessing_:Z

.field private enableDgProgramCache_:Z

.field private enableGassClient_:Z

.field private enableLazyScheduler_:Z

.field private enableMinimalAppStartQuerySignals_:Z

.field private enableMinimalCerSignal_:Z

.field private enableViewstringBinding_:Z

.field private fallbackAdshieldVersion_:I

.field private forceInitializeWithStaticProgram_:Z

.field private gassSignalTimeoutMs_:J

.field private hostType_:I

.field private hostVersion_:Ljava/lang/String;

.field private httpRequestTimeoutMs_:J

.field private localIntSignalTimeoutMs_:J

.field private loggingOptions_:Lads_mobile_sdk/wt1;

.field private methodTimeoutMs_:J

.field private prodInstallerCert_:Ljava/lang/String;

.field private programUpdateOptions_:Lads_mobile_sdk/uv2;

.field private requestedAdshieldVersion_:I

.field private signalsTimeoutMs_:J

.field private skipProgramUpdateWithStaticProgram_:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/na;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/na;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputallowFallbackToStaticProgram_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->allowFallbackToStaticProgram_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputallowFallback_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->allowFallback_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappStartQuerySignalsTimeoutMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->appStartQuerySignalsTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappStartWindowMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->appStartWindowMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/na;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/na;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputcancelQueuedSignalTaskOnTimeout_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->cancelQueuedSignalTaskOnTimeout_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputclearDgArgsAfterUse_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->clearDgArgsAfterUse_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableAsyncInputEventProcessing_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->enableAsyncInputEventProcessing_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableGassClient_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->enableGassClient_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableLazyScheduler_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->enableLazyScheduler_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableMinimalAppStartQuerySignals_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->enableMinimalAppStartQuerySignals_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableMinimalCerSignal_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->enableMinimalCerSignal_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputenableViewstringBinding_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->enableViewstringBinding_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputfallbackAdshieldVersion_(Lads_mobile_sdk/na;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/na;->fallbackAdshieldVersion_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputforceInitializeWithStaticProgram_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->forceInitializeWithStaticProgram_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputgassSignalTimeoutMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->gassSignalTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputhostType_(Lads_mobile_sdk/na;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/na;->hostType_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputhttpRequestTimeoutMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->httpRequestTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlocalIntSignalTimeoutMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->localIntSignalTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmethodTimeoutMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->methodTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputrequestedAdshieldVersion_(Lads_mobile_sdk/na;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/na;->requestedAdshieldVersion_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsignalsTimeoutMs_(Lads_mobile_sdk/na;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/na;->signalsTimeoutMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputskipProgramUpdateWithStaticProgram_(Lads_mobile_sdk/na;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/na;->skipProgramUpdateWithStaticProgram_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/na;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/na;->DEFAULT_INSTANCE:Lads_mobile_sdk/na;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/na;

    invoke-direct {v0}, Lads_mobile_sdk/na;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/na;->DEFAULT_INSTANCE:Lads_mobile_sdk/na;

    .line 5
    const-class v1, Lads_mobile_sdk/na;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lads_mobile_sdk/na;->fallbackAdshieldVersion_:I

    .line 26
    iput-boolean v0, p0, Lads_mobile_sdk/na;->allowFallback_:Z

    .line 27
    const-string v1, "unknown_host"

    iput-object v1, p0, Lads_mobile_sdk/na;->hostVersion_:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lads_mobile_sdk/na;->enableGassClient_:Z

    const-wide/16 v1, 0x64

    .line 29
    iput-wide v1, p0, Lads_mobile_sdk/na;->appStartQuerySignalsTimeoutMs_:J

    const-wide/16 v3, 0x7d0

    .line 30
    iput-wide v3, p0, Lads_mobile_sdk/na;->signalsTimeoutMs_:J

    const-wide/16 v3, 0xa

    .line 31
    iput-wide v3, p0, Lads_mobile_sdk/na;->gassSignalTimeoutMs_:J

    .line 32
    iput-wide v1, p0, Lads_mobile_sdk/na;->localIntSignalTimeoutMs_:J

    const-wide/16 v1, 0x4e20

    .line 33
    iput-wide v1, p0, Lads_mobile_sdk/na;->httpRequestTimeoutMs_:J

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lads_mobile_sdk/na;->prodInstallerCert_:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lads_mobile_sdk/na;->debugInstallerCert_:Ljava/lang/String;

    const-wide/16 v1, 0x1f4

    .line 36
    iput-wide v1, p0, Lads_mobile_sdk/na;->methodTimeoutMs_:J

    const-wide/16 v1, 0xbb8

    .line 37
    iput-wide v1, p0, Lads_mobile_sdk/na;->appStartWindowMs_:J

    .line 38
    iput-boolean v0, p0, Lads_mobile_sdk/na;->enableMinimalAppStartQuerySignals_:Z

    .line 39
    iput-boolean v0, p0, Lads_mobile_sdk/na;->clearDgArgsAfterUse_:Z

    .line 40
    iput-boolean v0, p0, Lads_mobile_sdk/na;->enableDgProgramCache_:Z

    .line 41
    iput-boolean v0, p0, Lads_mobile_sdk/na;->enableMinimalCerSignal_:Z

    .line 42
    iput-boolean v0, p0, Lads_mobile_sdk/na;->skipProgramUpdateWithStaticProgram_:Z

    return-void
.end method

.method public static W()Lads_mobile_sdk/la;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/na;->DEFAULT_INSTANCE:Lads_mobile_sdk/na;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/la;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 1483
    iget-boolean v0, p0, Lads_mobile_sdk/na;->clearDgArgsAfterUse_:Z

    return v0
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    .line 1243
    iget-object v0, p0, Lads_mobile_sdk/na;->debugInstallerCert_:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .registers 2

    .line 1758
    iget-boolean v0, p0, Lads_mobile_sdk/na;->enableAsyncInputEventProcessing_:Z

    return v0
.end method

.method public final D()Z
    .registers 2

    .line 669
    iget-boolean v0, p0, Lads_mobile_sdk/na;->enableGassClient_:Z

    return v0
.end method

.method public final E()Z
    .registers 2

    .line 1589
    iget-boolean v0, p0, Lads_mobile_sdk/na;->enableLazyScheduler_:Z

    return v0
.end method

.method public final F()Z
    .registers 2

    .line 1434
    iget-boolean v0, p0, Lads_mobile_sdk/na;->enableMinimalAppStartQuerySignals_:Z

    return v0
.end method

.method public final G()Z
    .registers 2

    .line 1644
    iget-boolean v0, p0, Lads_mobile_sdk/na;->enableMinimalCerSignal_:Z

    return v0
.end method

.method public final H()Z
    .registers 2

    .line 798
    iget-boolean v0, p0, Lads_mobile_sdk/na;->enableViewstringBinding_:Z

    return v0
.end method

.method public final I()Lads_mobile_sdk/kb;
    .registers 2

    .line 287
    iget v0, p0, Lads_mobile_sdk/na;->fallbackAdshieldVersion_:I

    invoke-static {v0}, Lads_mobile_sdk/kb;->a(I)Lads_mobile_sdk/kb;

    move-result-object v0

    if-nez v0, :cond_a

    .line 288
    sget-object v0, Lads_mobile_sdk/kb;->c:Lads_mobile_sdk/kb;

    :cond_a
    return-object v0
.end method

.method public final J()Z
    .registers 2

    .line 463
    iget-boolean v0, p0, Lads_mobile_sdk/na;->forceInitializeWithStaticProgram_:Z

    return v0
.end method

.method public final K()J
    .registers 3

    .line 1043
    iget-wide v0, p0, Lads_mobile_sdk/na;->gassSignalTimeoutMs_:J

    return-wide v0
.end method

.method public final L()Lads_mobile_sdk/ma;
    .registers 2

    .line 611
    iget v0, p0, Lads_mobile_sdk/na;->hostType_:I

    packed-switch v0, :pswitch_data_20

    const/4 v0, 0x0

    goto :goto_1b

    .line 612
    :pswitch_7
    sget-object v0, Lads_mobile_sdk/ma;->h:Lads_mobile_sdk/ma;

    goto :goto_1b

    .line 613
    :pswitch_a
    sget-object v0, Lads_mobile_sdk/ma;->g:Lads_mobile_sdk/ma;

    goto :goto_1b

    .line 614
    :pswitch_d
    sget-object v0, Lads_mobile_sdk/ma;->f:Lads_mobile_sdk/ma;

    goto :goto_1b

    .line 615
    :pswitch_10
    sget-object v0, Lads_mobile_sdk/ma;->e:Lads_mobile_sdk/ma;

    goto :goto_1b

    .line 616
    :pswitch_13
    sget-object v0, Lads_mobile_sdk/ma;->d:Lads_mobile_sdk/ma;

    goto :goto_1b

    .line 617
    :pswitch_16
    sget-object v0, Lads_mobile_sdk/ma;->c:Lads_mobile_sdk/ma;

    goto :goto_1b

    .line 618
    :pswitch_19
    sget-object v0, Lads_mobile_sdk/ma;->b:Lads_mobile_sdk/ma;

    :goto_1b
    if-nez v0, :cond_1f

    .line 619
    sget-object v0, Lads_mobile_sdk/ma;->i:Lads_mobile_sdk/ma;

    :cond_1f
    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    .line 524
    iget-object v0, p0, Lads_mobile_sdk/na;->hostVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public final N()J
    .registers 3

    .line 1145
    iget-wide v0, p0, Lads_mobile_sdk/na;->httpRequestTimeoutMs_:J

    return-wide v0
.end method

.method public final O()J
    .registers 3

    .line 1098
    iget-wide v0, p0, Lads_mobile_sdk/na;->localIntSignalTimeoutMs_:J

    return-wide v0
.end method

.method public final P()Lads_mobile_sdk/wt1;
    .registers 2

    .line 724
    iget-object v0, p0, Lads_mobile_sdk/na;->loggingOptions_:Lads_mobile_sdk/wt1;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/wt1;->v()Lads_mobile_sdk/wt1;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final Q()J
    .registers 3

    .line 1310
    iget-wide v0, p0, Lads_mobile_sdk/na;->methodTimeoutMs_:J

    return-wide v0
.end method

.method public final R()Ljava/lang/String;
    .registers 2

    .line 1184
    iget-object v0, p0, Lads_mobile_sdk/na;->prodInstallerCert_:Ljava/lang/String;

    return-object v0
.end method

.method public final S()Lads_mobile_sdk/uv2;
    .registers 2

    .line 969
    iget-object v0, p0, Lads_mobile_sdk/na;->programUpdateOptions_:Lads_mobile_sdk/uv2;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/uv2;->w()Lads_mobile_sdk/uv2;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final T()Lads_mobile_sdk/kb;
    .registers 2

    .line 227
    iget v0, p0, Lads_mobile_sdk/na;->requestedAdshieldVersion_:I

    invoke-static {v0}, Lads_mobile_sdk/kb;->a(I)Lads_mobile_sdk/kb;

    move-result-object v0

    if-nez v0, :cond_a

    .line 228
    sget-object v0, Lads_mobile_sdk/kb;->b:Lads_mobile_sdk/kb;

    :cond_a
    return-object v0
.end method

.method public final U()J
    .registers 3

    .line 916
    iget-wide v0, p0, Lads_mobile_sdk/na;->signalsTimeoutMs_:J

    return-wide v0
.end method

.method public final V()Z
    .registers 2

    .line 1701
    iget-boolean v0, p0, Lads_mobile_sdk/na;->skipProgramUpdateWithStaticProgram_:Z

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 36

    .line 9
    sget-object v0, Lads_mobile_sdk/ka;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_19
    const-class v0, Lads_mobile_sdk/na;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 65
    :cond_20
    sget-object v0, Lads_mobile_sdk/na;->DEFAULT_INSTANCE:Lads_mobile_sdk/na;

    return-object v0

    .line 66
    :cond_23
    sget-object v3, Lads_mobile_sdk/jb;->a:Lads_mobile_sdk/jb;

    const-string v30, "enableAsyncInputEventProcessing_"

    const-string v31, "cancelQueuedSignalTaskOnTimeout_"

    const-string v1, "bitField0_"

    const-string v2, "requestedAdshieldVersion_"

    const-string v4, "hostVersion_"

    const-string v5, "enableGassClient_"

    const-string v6, "loggingOptions_"

    const-string v7, "enableViewstringBinding_"

    const-string v8, "signalsTimeoutMs_"

    const-string v9, "programUpdateOptions_"

    const-string v10, "allowFallback_"

    const-string v11, "gassSignalTimeoutMs_"

    const-string v12, "localIntSignalTimeoutMs_"

    const-string v13, "httpRequestTimeoutMs_"

    const-string v14, "prodInstallerCert_"

    const-string v15, "debugInstallerCert_"

    const-string v16, "methodTimeoutMs_"

    const-string v17, "appStartWindowMs_"

    const-string v18, "enableMinimalAppStartQuerySignals_"

    const-string v19, "appStartQuerySignalsTimeoutMs_"

    const-string v20, "clearDgArgsAfterUse_"

    const-string v21, "enableDgProgramCache_"

    const-string v22, "enableLazyScheduler_"

    const-string v23, "fallbackAdshieldVersion_"

    const-string v25, "allowFallbackToStaticProgram_"

    const-string v26, "forceInitializeWithStaticProgram_"

    const-string v27, "hostType_"

    const-string v28, "enableMinimalCerSignal_"

    const-string v29, "skipProgramUpdateWithStaticProgram_"

    move-object/from16 v24, v3

    filled-new-array/range {v1 .. v31}, [Ljava/lang/Object;

    move-result-object v0

    .line 83
    sget-object v1, Lads_mobile_sdk/na;->DEFAULT_INSTANCE:Lads_mobile_sdk/na;

    const-string v2, "\u0004\u001c\u0000\u0001\u0001\u001d\u001c\u0000\u0000\u0000\u0001\u180c\u0000\u0003\u1008\u0005\u0004\u1007\u0007\u0005\u1009\u0008\u0006\u1007\t\u0007\u1002\u000b\u0008\u1009\u000c\t\u1007\u0002\n\u1002\r\u000b\u1002\u000e\u000c\u1002\u000f\r\u1008\u0010\u000e\u1008\u0011\u000f\u1002\u0012\u0010\u1002\u0013\u0011\u1007\u0014\u0012\u1002\n\u0013\u1007\u0015\u0014\u1007\u0016\u0015\u1007\u0017\u0016\u180c\u0001\u0017\u1007\u0003\u0018\u1007\u0004\u0019\u100c\u0006\u001a\u1007\u0018\u001b\u1007\u0019\u001c\u1007\u001a\u001d\u1007\u001b"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 84
    :cond_6e
    new-instance v0, Lads_mobile_sdk/la;

    invoke-direct {v0}, Lads_mobile_sdk/la;-><init>()V

    return-object v0

    .line 85
    :cond_74
    new-instance v0, Lads_mobile_sdk/na;

    invoke-direct {v0}, Lads_mobile_sdk/na;-><init>()V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/uv2;)V
    .registers 2

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/na;->programUpdateOptions_:Lads_mobile_sdk/uv2;

    .line 8
    iget p1, p0, Lads_mobile_sdk/na;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lads_mobile_sdk/na;->bitField0_:I

    return-void
.end method

.method public final a(Lads_mobile_sdk/wt1;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/na;->loggingOptions_:Lads_mobile_sdk/wt1;

    .line 4
    iget p1, p0, Lads_mobile_sdk/na;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lads_mobile_sdk/na;->bitField0_:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/na;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/na;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/na;->debugInstallerCert_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/na;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lads_mobile_sdk/na;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/na;->hostVersion_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/na;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/na;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/na;->prodInstallerCert_:Ljava/lang/String;

    return-void
.end method

.method public final v()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lads_mobile_sdk/na;->allowFallback_:Z

    return v0
.end method

.method public final w()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Lads_mobile_sdk/na;->allowFallbackToStaticProgram_:Z

    return v0
.end method

.method public final x()J
    .registers 3

    .line 857
    iget-wide v0, p0, Lads_mobile_sdk/na;->appStartQuerySignalsTimeoutMs_:J

    return-wide v0
.end method

.method public final y()J
    .registers 3

    .line 1371
    iget-wide v0, p0, Lads_mobile_sdk/na;->appStartWindowMs_:J

    return-wide v0
.end method

.method public final z()Z
    .registers 2

    .line 1815
    iget-boolean v0, p0, Lads_mobile_sdk/na;->cancelQueuedSignalTaskOnTimeout_:Z

    return v0
.end method
