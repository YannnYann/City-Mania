###### Class io.bidmachine.t (io.bidmachine.t)
.class public Lio/bidmachine/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/t$c;,
        Lio/bidmachine/t$b;
    }
.end annotation


# static fields
.field public static final k:J

.field public static final l:J

.field public static final m:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lio/bidmachine/tracking/TrackingObject;

.field public final d:Ljava/lang/Runnable;

.field public final e:Ljava/util/Queue;

.field public final f:Ljava/util/Queue;

.field public g:Lio/bidmachine/t$c;

.field public h:Lio/bidmachine/ApiRequest;

.field public i:J

.field public final j:Lio/bidmachine/internal/J;


# direct methods
.method public static synthetic $r8$lambda$5QqnXxV42y4-e0n2iKnbXSj4Xh0(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/t;->b(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GM8eCBYpC9nG292i5U2PE-nT2Nk(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/t;->a(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gl3c26yjRDwfQj8mRSqNaah1K6I(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/t;->a(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/InitRequest$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5-_xdKWQ2qkXUiUCyVs7CpXIvM(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/t;->a(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xxpx40RjIuREV2Rmrc6gVyZ0krA(Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/t;->a(Lio/bidmachine/protobuf/InitRequest$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$py6DanCRtwUhIgH99u1T-iiZkrg(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/k;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/t;->a(Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/k;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ri9g4bHWNOQXLWm5ntqFL8C4Quw(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/t;->a(Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lio/bidmachine/t;->k:J

    const-wide/16 v1, 0x80

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/t;->l:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/t;->m:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Queue;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/bidmachine/t;->i:J

    .line 9
    iput-object p1, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lio/bidmachine/t;->b:Ljava/lang/String;

    .line 11
    new-instance p2, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {p2}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    iput-object p2, p0, Lio/bidmachine/t;->c:Lio/bidmachine/tracking/TrackingObject;

    .line 12
    new-instance p2, Lio/bidmachine/t$b;

    invoke-direct {p2, p0}, Lio/bidmachine/t$b;-><init>(Lio/bidmachine/t;)V

    iput-object p2, p0, Lio/bidmachine/t;->d:Ljava/lang/Runnable;

    .line 13
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lio/bidmachine/t;->e:Ljava/util/Queue;

    .line 14
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lio/bidmachine/t;->f:Ljava/util/Queue;

    .line 15
    new-instance p2, Lio/bidmachine/internal/J;

    invoke-direct {p2, p1}, Lio/bidmachine/internal/J;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/bidmachine/t;->j:Lio/bidmachine/internal/J;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/t;J)J
    .registers 3

    .line 2
    iput-wide p1, p0, Lio/bidmachine/t;->i:J

    return-wide p1
.end method

.method public static synthetic a(Lio/bidmachine/t;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/t;->h:Lio/bidmachine/ApiRequest;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/t;)Ljava/lang/Runnable;
    .registers 1

    .line 3
    iget-object p0, p0, Lio/bidmachine/t;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 4

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/t$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lio/bidmachine/t$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/protobuf/InitRequest$Builder;)V

    invoke-static {v0, v1}, Lio/bidmachine/util/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/bidmachine/t$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lio/bidmachine/t$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/protobuf/InitRequest$Builder;)V

    invoke-static {p0, v0}, Lio/bidmachine/util/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 5

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/t$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/t$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-static {v0, v1}, Lio/bidmachine/util/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/bidmachine/t$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/t$$ExternalSyntheticLambda10;-><init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-static {p0, v0}, Lio/bidmachine/util/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 2

    .line 18
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-static {p2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setModel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/t;)Lio/bidmachine/t$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/t;->g:Lio/bidmachine/t$c;

    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V
    .registers 3

    .line 95
    invoke-static {p2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setHwv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-void
.end method

.method public static synthetic c(Lio/bidmachine/t;)Lio/bidmachine/tracking/TrackingObject;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/t;->c:Lio/bidmachine/tracking/TrackingObject;

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/t;)Lio/bidmachine/internal/J;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/t;->j:Lio/bidmachine/internal/J;

    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/t;)Ljava/util/Queue;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/t;->f:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/t;)J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/t;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic g(Lio/bidmachine/t;)Lio/bidmachine/protobuf/InitRequest;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/t;->b()Lio/bidmachine/protobuf/InitRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lio/bidmachine/t;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/t;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .registers 5

    .line 55
    iget-wide v0, p0, Lio/bidmachine/t;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_d

    .line 56
    sget-wide v0, Lio/bidmachine/t;->k:J

    iput-wide v0, p0, Lio/bidmachine/t;->i:J

    goto :goto_1a

    :cond_d
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 58
    iput-wide v0, p0, Lio/bidmachine/t;->i:J

    .line 59
    sget-wide v2, Lio/bidmachine/t;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    .line 60
    iput-wide v2, p0, Lio/bidmachine/t;->i:J

    .line 63
    :cond_1a
    :goto_1a
    iget-wide v0, p0, Lio/bidmachine/t;->i:J

    return-wide v0
.end method

.method public final a(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;
    .registers 4

    .line 27
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {p0, p1}, Lio/bidmachine/t;->b(Landroid/content/Context;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    .line 33
    const-string v1, "networks_info"

    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 37
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;
    .registers 6

    .line 38
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p2

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 46
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p3

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 48
    const-string v1, "network"

    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    .line 49
    const-string v0, "network_version"

    invoke-virtual {p1, v0, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    .line 50
    const-string p2, "network_adapter_version"

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    .line 52
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p2

    .line 53
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/k;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/AdvertisingDataManager;->c(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/AdvertisingDataManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 7
    invoke-virtual {p2}, Lio/bidmachine/k;->g()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    :cond_1b
    return-void
.end method

.method public final synthetic a(Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;)V
    .registers 6

    .line 10
    iget-object v0, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/AdvertisingDataManager;->c(Landroid/content/Context;)V

    .line 11
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 12
    iget-object p1, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {p1}, Lio/bidmachine/AdvertisingDataManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setIfa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 15
    invoke-virtual {p4}, Lio/bidmachine/k;->g()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_38

    .line 17
    invoke-static {p1}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setIfv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_38
    return-void
.end method

.method public a(Lio/bidmachine/t$c;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lio/bidmachine/t;->g:Lio/bidmachine/t$c;

    return-void
.end method

.method public final b(Landroid/content/Context;)Lcom/explorestack/protobuf/ListValue$Builder;
    .registers 6

    .line 96
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 97
    invoke-static {p1}, Lio/bidmachine/w;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/x;

    .line 99
    invoke-virtual {v1}, Lio/bidmachine/x;->c()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1}, Lio/bidmachine/x;->d()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v1}, Lio/bidmachine/x;->a()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v2, v3, v1}, Lio/bidmachine/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    goto :goto_10

    .line 106
    :cond_30
    const-string p1, "mraid"

    const-string v1, "3.8.0"

    const-string v2, "3.8.0.1"

    invoke-virtual {p0, p1, v1, v2}, Lio/bidmachine/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 109
    const-string p1, "vast"

    invoke-virtual {p0, p1, v1, v2}, Lio/bidmachine/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 112
    const-string p1, "nast"

    const-string v3, "1.0"

    invoke-virtual {p0, p1, v3, v2}, Lio/bidmachine/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 115
    const-string p1, "adaptive_rendering"

    invoke-virtual {p0, p1, v1, v2}, Lio/bidmachine/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public final b()Lio/bidmachine/protobuf/InitRequest;
    .registers 13

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lio/bidmachine/k;->b(Landroid/content/Context;)Lio/bidmachine/internal/u;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Lio/bidmachine/internal/u;->c()Lio/bidmachine/internal/v;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lio/bidmachine/k;->q()Lio/bidmachine/TargetingParams;

    move-result-object v7

    .line 6
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v2

    .line 7
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v3

    .line 9
    invoke-virtual {v6}, Lio/bidmachine/internal/u;->d()Lio/bidmachine/internal/w;

    move-result-object v8

    .line 11
    iget-object v0, p0, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lio/bidmachine/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 13
    new-instance v9, Lio/bidmachine/t$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v2, v1}, Lio/bidmachine/t$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/k;)V

    new-instance v0, Lio/bidmachine/t$$ExternalSyntheticLambda1;

    move-object v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/t$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;)V

    move-object v10, v1

    move-object v11, v2

    move-object v1, v5

    new-instance v2, Lio/bidmachine/t$$ExternalSyntheticLambda2;

    invoke-direct {v2, v11}, Lio/bidmachine/t$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/protobuf/InitRequest$Builder;)V

    invoke-virtual {v8, v9, v0, v2}, Lio/bidmachine/internal/w;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 35
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 38
    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 41
    :cond_49
    iget-object v0, v10, Lio/bidmachine/t;->b:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 43
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 45
    invoke-static {}, Lio/bidmachine/utils/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 46
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 49
    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 52
    :cond_65
    const-string v0, "BidMachine"

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 54
    const-string v0, "3.8.0"

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 57
    invoke-virtual {v6}, Lio/bidmachine/internal/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 58
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object v0

    .line 60
    new-instance v2, Lio/bidmachine/t$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v11}, Lio/bidmachine/t$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/InitRequest$Builder;)V

    new-instance v5, Lio/bidmachine/t$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v3, v4}, Lio/bidmachine/t$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-virtual {v8, v2, v5}, Lio/bidmachine/internal/w;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lio/bidmachine/protobuf/InitRequest$Builder;->setMake(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 78
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getDeviceType()Lio/bidmachine/util/DeviceType;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/DeviceInfoKt;->toProtobufDeviceType(Lio/bidmachine/util/DeviceType;)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 79
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v5

    .line 81
    invoke-virtual {v11, v5}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 83
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    move-object v2, v6

    const/4 v6, 0x0

    move-object v4, v3

    move-object v3, v7

    invoke-static/range {v0 .. v6}, Lio/bidmachine/RequestDataRetriever;->createContext(Landroid/content/Context;Lio/bidmachine/k;Lio/bidmachine/internal/u;Lio/bidmachine/TargetingParams;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;Lio/bidmachine/AdsType;)Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 91
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/bidmachine/t;->c(Landroid/content/Context;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setAndroid(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 93
    iget-object v0, v10, Lio/bidmachine/t;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/bidmachine/t;->a(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 94
    invoke-virtual {v11}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 7

    .line 4
    invoke-static {p1}, Lio/bidmachine/PlatformData;->get(Landroid/content/Context;)Lio/bidmachine/PlatformData;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/PlatformData;->getMinSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/bidmachine/t$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lio/bidmachine/t$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 9
    iget-object p1, p1, Lio/bidmachine/PlatformData;->kotlinVersion:Ljava/lang/String;

    new-instance v1, Lio/bidmachine/t$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lio/bidmachine/t$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)V

    invoke-static {p1, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 10
    iget-object p1, p0, Lio/bidmachine/t;->j:Lio/bidmachine/internal/J;

    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lio/bidmachine/t;->m:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lio/bidmachine/internal/J;->a(J)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/internal/I;

    .line 14
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lio/bidmachine/internal/I;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setStartInitTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v2

    .line 16
    invoke-virtual {v1}, Lio/bidmachine/internal/I;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setInitDuration(J)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lio/bidmachine/internal/I;->c()Z

    move-result v1

    invoke-virtual {v2, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setInitCompleted(Z)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->addContentProviderStartupMetrics(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    goto :goto_32

    .line 26
    :cond_66
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/t;->g:Lio/bidmachine/t$c;

    .line 3
    iput-object v0, p0, Lio/bidmachine/t;->h:Lio/bidmachine/ApiRequest;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/t;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lio/bidmachine/t;->f:Ljava/util/Queue;

    iget-object v1, p0, Lio/bidmachine/t;->e:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_f
    iget-object v0, p0, Lio/bidmachine/t;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/t;->c:Lio/bidmachine/tracking/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;)V

    .line 3
    new-instance v0, Lio/bidmachine/t$a;

    invoke-direct {v0, p0}, Lio/bidmachine/t$a;-><init>(Lio/bidmachine/t;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.t.a (io.bidmachine.t$a)
.class public Lio/bidmachine/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/t;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/t;


# direct methods
.method public constructor <init>(Lio/bidmachine/t;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    new-instance v1, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v1}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    iget-object v2, p0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    .line 2
    invoke-static {v2}, Lio/bidmachine/t;->h(Lio/bidmachine/t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ApiRequest$ApiInitDataBinder;

    invoke-direct {v2}, Lio/bidmachine/ApiRequest$ApiInitDataBinder;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    .line 4
    invoke-static {v2}, Lio/bidmachine/t;->g(Lio/bidmachine/t;)Lio/bidmachine/protobuf/InitRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/t$a$a;

    invoke-direct {v2, p0}, Lio/bidmachine/t$a$a;-><init>(Lio/bidmachine/t$a;)V

    .line 5
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lio/bidmachine/t;->a(Lio/bidmachine/t;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    return-void
.end method

###### Class io.bidmachine.t.a.C1209a (io.bidmachine.t$a$a)
.class public Lio/bidmachine/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/t$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/t$a;


# direct methods
.method public static synthetic $r8$lambda$At3WP6MGYl3V2Krs71qWlme4e_s(J)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/t$a$a;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/t$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(J)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "reschedule init request (%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/t;->a(Lio/bidmachine/t;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 6
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->e(Lio/bidmachine/t;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 7
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->f(Lio/bidmachine/t;)J

    move-result-wide v2

    .line 9
    new-instance v0, Lio/bidmachine/t$a$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, v3}, Lio/bidmachine/t$a$a$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->b(Lio/bidmachine/t;)Lio/bidmachine/t$c;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 11
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->b(Lio/bidmachine/t;)Lio/bidmachine/t$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/core/NetworkRequest$Callback;->onFail(Ljava/lang/Object;)V

    goto :goto_3e

    :cond_3c
    const-wide/16 v2, 0x0

    .line 14
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->a(Lio/bidmachine/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    .line 15
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->c(Lio/bidmachine/t;)Lio/bidmachine/tracking/TrackingObject;

    move-result-object v0

    sget-object v2, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    invoke-interface {v0, v2, v1, v1, p1}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/t$a$a;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/protobuf/InitResponse;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/t;->a(Lio/bidmachine/t;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 3
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lio/bidmachine/t;->a(Lio/bidmachine/t;J)J

    .line 4
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->a(Lio/bidmachine/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->b(Lio/bidmachine/t;)Lio/bidmachine/t$c;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 6
    iget-object v0, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object v0, v0, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {v0}, Lio/bidmachine/t;->b(Lio/bidmachine/t;)Lio/bidmachine/t$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/core/NetworkRequest$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 8
    :cond_31
    iget-object p1, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object p1, p1, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {p1}, Lio/bidmachine/t;->c(Lio/bidmachine/t;)Lio/bidmachine/tracking/TrackingObject;

    move-result-object p1

    sget-object v0, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    invoke-interface {p1, v0, v1, v1, v1}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    .line 12
    iget-object p1, p0, Lio/bidmachine/t$a$a;->a:Lio/bidmachine/t$a;

    iget-object p1, p1, Lio/bidmachine/t$a;->a:Lio/bidmachine/t;

    invoke-static {p1}, Lio/bidmachine/t;->d(Lio/bidmachine/t;)Lio/bidmachine/internal/J;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/internal/J;->a()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/t$a$a;->onSuccess(Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method

###### Class io.bidmachine.t$a$a$$ExternalSyntheticLambda0 (io.bidmachine.t$a$a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/t$a$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/bidmachine/t$a$a$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/t$a$a$$ExternalSyntheticLambda0;->f$0:J

    invoke-static {v0, v1}, Lio/bidmachine/t$a$a;->$r8$lambda$At3WP6MGYl3V2Krs71qWlme4e_s(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.t.b (io.bidmachine.t$b)
.class public Lio/bidmachine/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lio/bidmachine/t;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/t$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/t$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/t;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/t;->e()V

    :cond_d
    return-void
.end method

###### Class io.bidmachine.t.c (io.bidmachine.t$c)
.class public interface abstract Lio/bidmachine/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

###### Class io.bidmachine.t$$ExternalSyntheticLambda0 (io.bidmachine.t$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/t;

.field public final synthetic f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

.field public final synthetic f$2:Lio/bidmachine/k;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/k;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/t;

    iput-object p2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

    iput-object p3, p0, Lio/bidmachine/t$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/t;

    iget-object v1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

    iget-object v2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/k;

    invoke-static {v0, v1, v2}, Lio/bidmachine/t;->$r8$lambda$py6DanCRtwUhIgH99u1T-iiZkrg(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/k;)V

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda1 (io.bidmachine.t$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/t;

.field public final synthetic f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

.field public final synthetic f$2:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic f$3:Lio/bidmachine/internal/v;

.field public final synthetic f$4:Lio/bidmachine/k;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/t;

    iput-object p2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

    iput-object p3, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p4, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$3:Lio/bidmachine/internal/v;

    iput-object p5, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$4:Lio/bidmachine/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/t;

    iget-object v1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

    iget-object v2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$3:Lio/bidmachine/internal/v;

    iget-object v4, p0, Lio/bidmachine/t$$ExternalSyntheticLambda1;->f$4:Lio/bidmachine/k;

    invoke-static {v0, v1, v2, v3, v4}, Lio/bidmachine/t;->$r8$lambda$ri9g4bHWNOQXLWm5ntqFL8C4Quw(Lio/bidmachine/t;Lio/bidmachine/protobuf/InitRequest$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;)V

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda10 (io.bidmachine.t$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/util/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic f$1:Lio/bidmachine/internal/v;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda10;->f$1:Lio/bidmachine/internal/v;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda10;->f$1:Lio/bidmachine/internal/v;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/bidmachine/t;->$r8$lambda$5QqnXxV42y4-e0n2iKnbXSj4Xh0(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda2 (io.bidmachine.t$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/InitRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/InitRequest$Builder;

    invoke-static {v0}, Lio/bidmachine/t;->$r8$lambda$Xxpx40RjIuREV2Rmrc6gVyZ0krA(Lio/bidmachine/protobuf/InitRequest$Builder;)V

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda3 (io.bidmachine.t$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/DeviceInfo;

.field public final synthetic f$1:Lio/bidmachine/protobuf/InitRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/DeviceInfo;

    iput-object p2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/DeviceInfo;

    iget-object v1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/protobuf/InitRequest$Builder;

    invoke-static {v0, v1}, Lio/bidmachine/t;->$r8$lambda$Gl3c26yjRDwfQj8mRSqNaah1K6I(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/InitRequest$Builder;)V

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda4 (io.bidmachine.t$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/DeviceInfo;

.field public final synthetic f$1:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic f$2:Lio/bidmachine/internal/v;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/DeviceInfo;

    iput-object p2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/t$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/internal/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/DeviceInfo;

    iget-object v1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/internal/v;

    invoke-static {v0, v1, v2}, Lio/bidmachine/t;->$r8$lambda$X5-_xdKWQ2qkXUiUCyVs7CpXIvM(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda5 (io.bidmachine.t$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setMinApiLevel(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda6 (io.bidmachine.t$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setKotlinVersion(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda7 (io.bidmachine.t$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/util/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/InitRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/protobuf/InitRequest$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setModel(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda8 (io.bidmachine.t$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/util/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/InitRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/protobuf/InitRequest$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setHwv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    return-void
.end method

###### Class io.bidmachine.t$$ExternalSyntheticLambda9 (io.bidmachine.t$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/t$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/util/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic f$1:Lio/bidmachine/internal/v;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p2, p0, Lio/bidmachine/t$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/internal/v;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/t$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v1, p0, Lio/bidmachine/t$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/internal/v;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/bidmachine/t;->$r8$lambda$GM8eCBYpC9nG292i5U2PE-nT2Nk(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Ljava/lang/String;)V

    return-void
.end method
