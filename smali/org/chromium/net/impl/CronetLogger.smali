###### Class org.chromium.net.impl.CronetLogger (org.chromium.net.impl.CronetLogger)
.class public abstract Lorg/chromium/net/impl/CronetLogger;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetLogger$CronetVersion;,
        Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetSource;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateId()J
.end method

.method public abstract logCronetEngineBuilderInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract logCronetEngineCreation(JLorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Lorg/chromium/net/impl/CronetLogger$CronetVersion;Lorg/chromium/net/impl/CronetLogger$CronetSource;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cronetEngineId",
            "engineBuilderInfo",
            "version",
            "source"
        }
    .end annotation
.end method

.method public abstract logCronetTrafficInfo(JLorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cronetEngineId",
            "trafficInfo"
        }
    .end annotation
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetEngineBuilderInfo (org.chromium.net.impl.CronetLogger$CronetEngineBuilderInfo)
.class public Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetEngineBuilderInfo"
.end annotation


# instance fields
.field public final mBrotiEnabled:Z

.field public final mCronetInitializationRef:J

.field public final mExperimentalOptions:Ljava/lang/String;

.field public final mHttp2Enabled:Z

.field public final mHttpCacheMode:I

.field public final mNetworkQualityEstimatorEnabled:Z

.field public final mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

.field public final mQuicEnabled:Z

.field public final mStoragePath:Ljava/lang/String;

.field public final mThreadPriority:I

.field public final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ZIJ)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKeyPinningBypassForLocalTrustAnchorsEnabled",
            "userAgent",
            "storagePath",
            "quicEnabled",
            "http2Enabled",
            "brotiEnabled",
            "httpCacheMode",
            "experimentalOptions",
            "networkQualityEstimatorEnabled",
            "threadPriority",
            "cronetInitializationRef"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    .line 119
    iput-object p2, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mUserAgent:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mStoragePath:Ljava/lang/String;

    .line 121
    iput-boolean p4, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mQuicEnabled:Z

    .line 122
    iput-boolean p5, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttp2Enabled:Z

    .line 123
    iput-boolean p6, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mBrotiEnabled:Z

    .line 124
    iput p7, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttpCacheMode:I

    .line 125
    iput-object p8, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mExperimentalOptions:Ljava/lang/String;

    .line 126
    iput-boolean p9, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mNetworkQualityEstimatorEnabled:Z

    .line 127
    iput p10, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mThreadPriority:I

    .line 128
    iput-wide p11, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mCronetInitializationRef:J

    return-void
.end method


# virtual methods
.method public getCronetInitializationRef()J
    .registers 3

    .line 185
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mCronetInitializationRef:J

    return-wide v0
.end method

.method public getExperimentalOptions()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mExperimentalOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCacheMode()I
    .registers 2

    .line 166
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttpCacheMode:I

    return v0
.end method

.method public getThreadPriority()I
    .registers 2

    .line 181
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mThreadPriority:I

    return v0
.end method

.method public isBrotliEnabled()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mBrotiEnabled:Z

    return v0
.end method

.method public isHttp2Enabled()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttp2Enabled:Z

    return v0
.end method

.method public isNetworkQualityEstimatorEnabled()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mNetworkQualityEstimatorEnabled:Z

    return v0
.end method

.method public isPublicKeyPinningBypassForLocalTrustAnchorsEnabled()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return v0
.end method

.method public isQuicEnabled()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mQuicEnabled:Z

    return v0
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetEngineBuilderInitializedInfo (org.chromium.net.impl.CronetLogger$CronetEngineBuilderInitializedInfo)
.class public final Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CronetEngineBuilderInitializedInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    }
.end annotation


# instance fields
.field public apiVersion:Lorg/chromium/net/impl/CronetLogger$CronetVersion;

.field public author:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

.field public creationSuccessful:Ljava/lang/Boolean;

.field public cronetInitializationRef:J

.field public engineBuilderCreatedLatencyMillis:I

.field public implVersion:Lorg/chromium/net/impl/CronetLogger$CronetVersion;

.field public source:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 72
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    iput-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->source:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    return-void
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetEngineBuilderInitializedInfo.Author (org.chromium.net.impl.CronetLogger$CronetEngineBuilderInitializedInfo$Author)
.class public final enum Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Author"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

.field public static final enum API:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

.field public static final enum IMPL:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;


# direct methods
.method public static synthetic $values()[Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    .registers 2

    .line 65
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->API:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    sget-object v1, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    filled-new-array {v0, v1}, [Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 66
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    const-string v1, "API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->API:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 67
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    const-string v1, "IMPL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 65
    invoke-static {}, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->$values()[Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 65
    const-class v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    .registers 1

    .line 65
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    return-object v0
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetSource (org.chromium.net.impl.CronetLogger$CronetSource)
.class public final enum Lorg/chromium/net/impl/CronetLogger$CronetSource;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CronetSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/impl/CronetLogger$CronetSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum CRONET_SOURCE_FAKE:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum CRONET_SOURCE_FALLBACK:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum CRONET_SOURCE_PLATFORM:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum CRONET_SOURCE_PLAY_SERVICES:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum CRONET_SOURCE_STATICALLY_LINKED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum CRONET_SOURCE_UNSPECIFIED:Lorg/chromium/net/impl/CronetLogger$CronetSource;


# direct methods
.method public static synthetic $values()[Lorg/chromium/net/impl/CronetLogger$CronetSource;
    .registers 6

    .line 15
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v1, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v2, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v3, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v4, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v5, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FAKE:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    filled-new-array/range {v0 .. v5}, [Lorg/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 19
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_STATICALLY_LINKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 21
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_PLAY_SERVICES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 23
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_FALLBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 25
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_PLATFORM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 27
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_FAKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FAKE:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 15
    invoke-static {}, Lorg/chromium/net/impl/CronetLogger$CronetSource;->$values()[Lorg/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/CronetLogger$CronetSource;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 15
    const-class v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/CronetLogger$CronetSource;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/impl/CronetLogger$CronetSource;
    .registers 1

    .line 15
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/CronetLogger$CronetSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/CronetLogger$CronetSource;

    return-object v0
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetTrafficInfo (org.chromium.net.impl.CronetLogger$CronetTrafficInfo)
.class public Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetTrafficInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;,
        Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    }
.end annotation


# instance fields
.field public final mCronetSource:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public final mCronetVersion:Ljava/lang/String;

.field public final mDidConnectionMigrationSucceed:Z

.field public final mFailureReason:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public final mFinalUserCallbackThrew:Z

.field public final mHeadersLatency:Lj$/time/Duration;

.field public final mIsBidiStream:Z

.field public final mNegotiatedProtocol:Ljava/lang/String;

.field public final mNetworkInternalErrorCode:I

.field public final mNonfinalUserCallbackExceptionCount:I

.field public final mOnUploadReadCount:I

.field public final mQuicErrorCode:I

.field public final mReadCount:I

.field public final mRequestBodySizeInBytes:J

.field public final mRequestHeaderSizeInBytes:J

.field public final mResponseBodySizeInBytes:J

.field public final mResponseHeaderSizeInBytes:J

.field public final mResponseStatusCode:I

.field public final mSocketReused:Z

.field public final mSource:I

.field public final mTerminalState:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public final mTimeToConnectMillis:J

.field public final mTimeToEstablishDnsMillis:J

.field public final mTimeToEstablishSSLMillis:J

.field public final mTimeToSendFirstByteMillis:J

.field public final mTotalLatency:Lj$/time/Duration;

.field public final mUid:I

.field public final mWasConnectionMigrationAttempted:Z


# direct methods
.method public constructor <init>(JJJJILj$/time/Duration;Lj$/time/Duration;Ljava/lang/String;ZZLorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;IIIZZIIIILorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;ZLjava/lang/String;Lorg/chromium/net/impl/CronetLogger$CronetSource;JJJJ)V
    .registers 37
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestHeaderSizeInBytes",
            "requestBodySizeInBytes",
            "responseHeaderSizeInBytes",
            "responseBodySizeInBytes",
            "responseStatusCode",
            "headersLatency",
            "totalLatency",
            "negotiatedProtocol",
            "wasConnectionMigrationAttempted",
            "didConnectionMigrationSucceed",
            "terminalState",
            "nonfinalUserCallbackExceptionCount",
            "readCount",
            "uploadReadCount",
            "isBidiStream",
            "finalUserCallbackThrew",
            "uid",
            "networkInternalErrorCode",
            "quicErrorCode",
            "source",
            "failureReason",
            "sockedReused",
            "cronetVersion",
            "cronetSource",
            "timeToEstablishDnsMillis",
            "timeToEstablishSSLMillis",
            "timeToConnectMillis",
            "timeToSendFirstByteMillis"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestHeaderSizeInBytes:J

    .line 266
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestBodySizeInBytes:J

    .line 267
    iput-wide p5, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseHeaderSizeInBytes:J

    .line 268
    iput-wide p7, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseBodySizeInBytes:J

    .line 269
    iput p9, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseStatusCode:I

    .line 270
    iput-object p10, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mHeadersLatency:Lj$/time/Duration;

    .line 271
    iput-object p11, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTotalLatency:Lj$/time/Duration;

    .line 272
    iput-object p12, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNegotiatedProtocol:Ljava/lang/String;

    .line 273
    iput-boolean p13, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mWasConnectionMigrationAttempted:Z

    .line 274
    iput-boolean p14, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mDidConnectionMigrationSucceed:Z

    .line 275
    iput-object p15, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTerminalState:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move/from16 p1, p16

    .line 276
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNonfinalUserCallbackExceptionCount:I

    move/from16 p1, p17

    .line 277
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mReadCount:I

    move/from16 p1, p18

    .line 278
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mOnUploadReadCount:I

    move/from16 p1, p19

    .line 279
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mIsBidiStream:Z

    move/from16 p1, p20

    .line 280
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFinalUserCallbackThrew:Z

    move/from16 p1, p21

    .line 281
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mUid:I

    move/from16 p1, p22

    .line 282
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNetworkInternalErrorCode:I

    move/from16 p1, p23

    .line 283
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mQuicErrorCode:I

    move/from16 p1, p24

    .line 284
    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSource:I

    move-object/from16 p1, p25

    .line 285
    iput-object p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFailureReason:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 p1, p26

    .line 286
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSocketReused:Z

    move-object/from16 p1, p27

    .line 287
    iput-object p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mCronetVersion:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 288
    iput-object p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mCronetSource:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    move-wide/from16 p1, p29

    .line 289
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToEstablishDnsMillis:J

    move-wide/from16 p1, p31

    .line 290
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToEstablishSSLMillis:J

    move-wide/from16 p1, p33

    .line 291
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToConnectMillis:J

    move-wide/from16 p1, p35

    .line 292
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToSendFirstByteMillis:J

    return-void
.end method


# virtual methods
.method public didConnectionMigrationSucceed()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mDidConnectionMigrationSucceed:Z

    return v0
.end method

.method public getConnectionCloseSource()I
    .registers 2

    .line 394
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSource:I

    return v0
.end method

.method public getCronetSource()Lorg/chromium/net/impl/CronetLogger$CronetSource;
    .registers 2

    .line 410
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mCronetSource:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    return-object v0
.end method

.method public getCronetVersion()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mCronetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureReason()Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 2

    .line 398
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFailureReason:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-object v0
.end method

.method public getFinalUserCallbackThrew()Z
    .registers 2

    .line 378
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFinalUserCallbackThrew:Z

    return v0
.end method

.method public getHeadersLatency()Lj$/time/Duration;
    .registers 2

    .line 329
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mHeadersLatency:Lj$/time/Duration;

    return-object v0
.end method

.method public getIsBidiStream()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mIsBidiStream:Z

    return v0
.end method

.method public getIsSocketReused()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSocketReused:Z

    return v0
.end method

.method public getNegotiatedProtocol()Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNegotiatedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInternalErrorCode()I
    .registers 2

    .line 386
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNetworkInternalErrorCode:I

    return v0
.end method

.method public getNonfinalUserCallbackExceptionCount()I
    .registers 2

    .line 362
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNonfinalUserCallbackExceptionCount:I

    return v0
.end method

.method public getOnUploadReadCount()I
    .registers 2

    .line 370
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mOnUploadReadCount:I

    return v0
.end method

.method public getQuicErrorCode()I
    .registers 2

    .line 390
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mQuicErrorCode:I

    return v0
.end method

.method public getReadCount()I
    .registers 2

    .line 366
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mReadCount:I

    return v0
.end method

.method public getRequestBodySizeInBytes()J
    .registers 3

    .line 304
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestBodySizeInBytes:J

    return-wide v0
.end method

.method public getRequestHeaderSizeInBytes()J
    .registers 3

    .line 299
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestHeaderSizeInBytes:J

    return-wide v0
.end method

.method public getResponseBodySizeInBytes()J
    .registers 3

    .line 314
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseBodySizeInBytes:J

    return-wide v0
.end method

.method public getResponseHeaderSizeInBytes()J
    .registers 3

    .line 309
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseHeaderSizeInBytes:J

    return-wide v0
.end method

.method public getResponseStatusCode()I
    .registers 2

    .line 319
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseStatusCode:I

    return v0
.end method

.method public getTerminalState()Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 2

    .line 358
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTerminalState:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0
.end method

.method public getTimeToConnectMillis()J
    .registers 3

    .line 422
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToConnectMillis:J

    return-wide v0
.end method

.method public getTimeToEstablishDNSMillis()J
    .registers 3

    .line 414
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToEstablishDnsMillis:J

    return-wide v0
.end method

.method public getTimeToEstablishSSLMillis()J
    .registers 3

    .line 418
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToEstablishSSLMillis:J

    return-wide v0
.end method

.method public getTimeToSendFirstByteMillis()J
    .registers 3

    .line 426
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTimeToSendFirstByteMillis:J

    return-wide v0
.end method

.method public getTotalLatency()Lj$/time/Duration;
    .registers 2

    .line 339
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTotalLatency:Lj$/time/Duration;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 382
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mUid:I

    return v0
.end method

.method public wasConnectionMigrationAttempted()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mWasConnectionMigrationAttempted:Z

    return v0
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetTrafficInfo.RequestFailureReason (org.chromium.net.impl.CronetLogger$CronetTrafficInfo$RequestFailureReason)
.class public final enum Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestFailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public static final enum NETWORK:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public static final enum OTHER:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public static final enum UNKNOWN:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;


# direct methods
.method public static synthetic $values()[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 3

    .line 201
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    sget-object v1, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    sget-object v2, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    filled-new-array {v0, v1, v2}, [Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 202
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 203
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    const-string v1, "NETWORK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 204
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 201
    invoke-static {}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->$values()[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 201
    const-class v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 1

    .line 201
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-object v0
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetTrafficInfo.RequestTerminalState (org.chromium.net.impl.CronetLogger$CronetTrafficInfo$RequestTerminalState)
.class public final enum Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestTerminalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public static final enum CANCELLED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public static final enum ERROR:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public static final enum SUCCEEDED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;


# direct methods
.method public static synthetic $values()[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 3

    .line 194
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    sget-object v1, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    sget-object v2, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    filled-new-array {v0, v1, v2}, [Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 195
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 196
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 197
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    const-string v1, "CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 194
    invoke-static {}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->$values()[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 194
    const-class v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 1

    .line 194
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->$VALUES:[Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0
.end method

###### Class org.chromium.net.impl.CronetLogger.CronetVersion (org.chromium.net.impl.CronetLogger$CronetVersion)
.class public Lorg/chromium/net/impl/CronetLogger$CronetVersion;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetVersion"
.end annotation


# instance fields
.field public final mBuildVersion:I

.field public final mMajorVersion:I

.field public final mMinorVersion:I

.field public final mPatchVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 444
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    const/4 v0, 0x1

    .line 445
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    const/4 v0, 0x2

    .line 446
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    const/4 v0, 0x3

    .line 447
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    return-void
.end method


# virtual methods
.method public getBuildVersion()I
    .registers 2

    .line 462
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    return v0
.end method

.method public getMajorVersion()I
    .registers 2

    .line 452
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    .line 457
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    return v0
.end method

.method public getPatchVersion()I
    .registers 2

    .line 467
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 472
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    iget v1, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    iget v2, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    iget v3, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
