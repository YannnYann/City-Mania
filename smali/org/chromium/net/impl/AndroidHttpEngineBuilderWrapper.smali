###### Class org.chromium.net.impl.AndroidHttpEngineBuilderWrapper (org.chromium.net.impl.AndroidHttpEngineBuilderWrapper)
.class public Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;
.super Lorg/chromium/net/ICronetEngineBuilder;
.source "AndroidHttpEngineBuilderWrapper.java"


# static fields
.field public static sLibraryLoaderUnsupportedLogged:Z

.field public static sNQEUnsupportedLogged:Z


# instance fields
.field public final mBackend:Landroid/net/http/HttpEngine$Builder;


# direct methods
.method public constructor <init>(Landroid/net/http/HttpEngine$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/chromium/net/ICronetEngineBuilder;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    return-void
.end method

.method public static optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 260
    sget-object v0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$1;->$SwitchMap$org$chromium$net$telemetry$OptionalBoolean:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OptionalBoolean value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2e
    return v1
.end method

.method public static parseConnectionMigrationOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/ConnectionMigrationOptions;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 160
    invoke-static {}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline21;->m()Landroid/net/http/ConnectionMigrationOptions$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getMigrateSessionsOnNetworkChangeV2Option()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 163
    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline35;->m(Landroid/net/http/ConnectionMigrationOptions$Builder;I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 167
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getAllowPortMigration()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 166
    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline36;->m(Landroid/net/http/ConnectionMigrationOptions$Builder;I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 169
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getMigrateSessionsEarlyV2()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object p0

    .line 171
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 170
    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline37;->m(Landroid/net/http/ConnectionMigrationOptions$Builder;I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 172
    sget-object v1, Lorg/chromium/net/telemetry/OptionalBoolean;->TRUE:Lorg/chromium/net/telemetry/OptionalBoolean;

    if-ne p0, v1, :cond_30

    .line 174
    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result p0

    .line 173
    invoke-static {v0, p0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline36;->m(Landroid/net/http/ConnectionMigrationOptions$Builder;I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 177
    :cond_30
    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline38;->m(Landroid/net/http/ConnectionMigrationOptions$Builder;)Landroid/net/http/ConnectionMigrationOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseDnsOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/DnsOptions;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 182
    invoke-static {}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline18;->m()Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsDelayMillisOption()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    int-to-long v3, v1

    .line 186
    invoke-static {v3, v4}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion1;->m(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;Lj$/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 189
    :cond_13
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsMaxExpiredTimeMillisOption()I

    move-result v1

    if-eq v1, v2, :cond_21

    int-to-long v3, v1

    .line 191
    invoke-static {v3, v4}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion3;->m(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;Lj$/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 197
    :cond_21
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsAllowOtherNetworkOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 195
    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline23;->m(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;I)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsUseStaleOnNameNotResolvedOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 198
    invoke-static {v1, v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline24;->m(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;I)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 202
    invoke-static {}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline19;->m()Landroid/net/http/DnsOptions$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getAsyncDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 205
    invoke-static {v1, v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline25;->m(Landroid/net/http/DnsOptions$Builder;I)Landroid/net/http/DnsOptions$Builder;

    move-result-object v3

    .line 208
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v4

    .line 207
    invoke-static {v3, v4}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline26;->m(Landroid/net/http/DnsOptions$Builder;I)Landroid/net/http/DnsOptions$Builder;

    move-result-object v3

    .line 209
    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline27;->m(Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;)Landroid/net/http/DnsOptions$StaleDnsOptions;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline28;->m(Landroid/net/http/DnsOptions$Builder;Landroid/net/http/DnsOptions$StaleDnsOptions;)Landroid/net/http/DnsOptions$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getRaceStaleDnsOnConnection()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    .line 211
    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 210
    invoke-static {v0, v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline29;->m(Landroid/net/http/DnsOptions$Builder;I)Landroid/net/http/DnsOptions$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsPersistToDiskOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    .line 214
    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 213
    invoke-static {v0, v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline30;->m(Landroid/net/http/DnsOptions$Builder;I)Landroid/net/http/DnsOptions$Builder;

    .line 216
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsPersistDelayMillisOption()I

    move-result p0

    if-eq p0, v2, :cond_81

    int-to-long v2, p0

    .line 218
    invoke-static {v2, v3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion2;->m(Landroid/net/http/DnsOptions$Builder;Lj$/time/Duration;)Landroid/net/http/DnsOptions$Builder;

    .line 221
    :cond_81
    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline22;->m(Landroid/net/http/DnsOptions$Builder;)Landroid/net/http/DnsOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuicOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/QuicOptions;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 226
    invoke-static {}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline20;->m()Landroid/net/http/QuicOptions$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getHostWhitelist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 230
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getHostWhitelist()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 231
    invoke-static {v0, v4}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline31;->m(Landroid/net/http/QuicOptions$Builder;Ljava/lang/String;)Landroid/net/http/QuicOptions$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 235
    :cond_20
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getMaxServerConfigsStoredInPropertiesOption()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 237
    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline32;->m(Landroid/net/http/QuicOptions$Builder;I)Landroid/net/http/QuicOptions$Builder;

    .line 240
    :cond_2a
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getUserAgentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 242
    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline33;->m(Landroid/net/http/QuicOptions$Builder;Ljava/lang/String;)Landroid/net/http/QuicOptions$Builder;

    .line 245
    :cond_33
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getIdleConnectionTimeoutSecondsOption()I

    move-result p0

    if-eq p0, v2, :cond_41

    int-to-long v1, p0

    .line 248
    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object p0

    .line 247
    invoke-static {v0, p0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion4;->m(Landroid/net/http/QuicOptions$Builder;Lj$/time/Duration;)Landroid/net/http/QuicOptions$Builder;

    .line 251
    :cond_41
    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline34;->m(Landroid/net/http/QuicOptions$Builder;)Landroid/net/http/QuicOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostName",
            "pinsSha256",
            "includeSubdomains",
            "expirationDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Lorg/chromium/net/ICronetEngineBuilder;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    .line 110
    invoke-static {p4}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    move-result-object p4

    .line 109
    invoke-static {v0, p1, p2, p3, p4}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticAPIConversion0;->m(Landroid/net/http/HttpEngine$Builder;Ljava/lang/String;Ljava/util/Set;ZLj$/time/Instant;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "port",
            "alternatePort"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1, p2, p3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline6;->m(Landroid/net/http/HttpEngine$Builder;Ljava/lang/String;II)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public build()Lorg/chromium/net/ExperimentalCronetEngine;
    .registers 3

    .line 154
    new-instance v0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline9;->m(Landroid/net/http/HttpEngine$Builder;)Landroid/net/http/HttpEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;-><init>(Landroid/net/http/HttpEngine;)V

    return-object v0
.end method

.method public enableBrotli(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/http/HttpEngine$Builder;Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableHttp2(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline8;->m(Landroid/net/http/HttpEngine$Builder;Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableHttpCache(IJ)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cacheMode",
            "maxSize"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1, p2, p3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline16;->m(Landroid/net/http/HttpEngine$Builder;IJ)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableNetworkQualityEstimator(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 138
    sget-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sNQEUnsupportedLogged:Z

    if-nez p1, :cond_e

    .line 139
    const-string p1, "HttpEngBuilderWrap"

    const-string v0, "NetworkQualityEstimator is unsupported when HttpEngineNativeProvider is used"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 142
    sput-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sNQEUnsupportedLogged:Z

    :cond_e
    return-object p0
.end method

.method public enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline11;->m(Landroid/net/http/HttpEngine$Builder;Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableQuic(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline7;->m(Landroid/net/http/HttpEngine$Builder;Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableSdch(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline10;->m(Landroid/net/http/HttpEngine$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExperimentalOptions(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringOptions"
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/chromium/net/telemetry/ExperimentalOptions;

    invoke-direct {v0, p1}, Lorg/chromium/net/telemetry/ExperimentalOptions;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->parseConnectionMigrationOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/ConnectionMigrationOptions;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline13;->m(Landroid/net/http/HttpEngine$Builder;Landroid/net/http/ConnectionMigrationOptions;)Landroid/net/http/HttpEngine$Builder;

    .line 131
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->parseDnsOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/DnsOptions;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline14;->m(Landroid/net/http/HttpEngine$Builder;Landroid/net/http/DnsOptions;)Landroid/net/http/HttpEngine$Builder;

    .line 132
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->parseQuicOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/QuicOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline15;->m(Landroid/net/http/HttpEngine$Builder;Landroid/net/http/QuicOptions;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public setLibraryLoader(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loader"
        }
    .end annotation

    .line 58
    sget-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sLibraryLoaderUnsupportedLogged:Z

    if-nez p1, :cond_e

    .line 59
    const-string p1, "HttpEngBuilderWrap"

    const-string v0, "Custom library loader is unsupported when HttpEngineNativeProvider is used."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 62
    sput-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sLibraryLoaderUnsupportedLogged:Z

    :cond_e
    return-object p0
.end method

.method public setStoragePath(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline17;->m(Landroid/net/http/HttpEngine$Builder;Ljava/lang/String;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public setThreadPriority(I)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAgent"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline12;->m(Landroid/net/http/HttpEngine$Builder;Ljava/lang/String;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

###### Class org.chromium.net.impl.AndroidHttpEngineBuilderWrapper.AnonymousClass1 (org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$1)
.class public synthetic Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$1;
.super Ljava/lang/Object;
.source "AndroidHttpEngineBuilderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$chromium$net$telemetry$OptionalBoolean:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 260
    invoke-static {}, Lorg/chromium/net/telemetry/OptionalBoolean;->values()[Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$1;->$SwitchMap$org$chromium$net$telemetry$OptionalBoolean:[I

    :try_start_9
    sget-object v1, Lorg/chromium/net/telemetry/OptionalBoolean;->TRUE:Lorg/chromium/net/telemetry/OptionalBoolean;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$1;->$SwitchMap$org$chromium$net$telemetry$OptionalBoolean:[I

    sget-object v1, Lorg/chromium/net/telemetry/OptionalBoolean;->FALSE:Lorg/chromium/net/telemetry/OptionalBoolean;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$1;->$SwitchMap$org$chromium$net$telemetry$OptionalBoolean:[I

    sget-object v1, Lorg/chromium/net/telemetry/OptionalBoolean;->UNSET:Lorg/chromium/net/telemetry/OptionalBoolean;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
