###### Class io.bidmachine.util.log.LoggerSettings (io.bidmachine.util.log.LoggerSettings)
.class public final Lio/bidmachine/util/log/LoggerSettings;
.super Ljava/lang/Object;
.source "LoggerSettings.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/log/LoggerSettings;

.field public static final logger:Lio/bidmachine/util/log/DefaultLoggerInstance;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/util/log/LoggerSettings;

    invoke-direct {v0}, Lio/bidmachine/util/log/LoggerSettings;-><init>()V

    sput-object v0, Lio/bidmachine/util/log/LoggerSettings;->INSTANCE:Lio/bidmachine/util/log/LoggerSettings;

    .line 5
    new-instance v0, Lio/bidmachine/util/log/DefaultLoggerInstance;

    const-string v1, "BidMachineUtil"

    invoke-direct {v0, v1}, Lio/bidmachine/util/log/DefaultLoggerInstance;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/util/log/LoggerSettings;->logger:Lio/bidmachine/util/log/DefaultLoggerInstance;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setEnable(Z)V
    .registers 2

    .line 9
    sget-object v0, Lio/bidmachine/util/log/LoggerSettings;->logger:Lio/bidmachine/util/log/DefaultLoggerInstance;

    invoke-virtual {v0, p0}, Lio/bidmachine/util/log/DefaultLoggerInstance;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final getLogger$bidmachine_android_sdk_bd_3_8_0()Lio/bidmachine/util/log/DefaultLoggerInstance;
    .registers 2

    .line 5
    sget-object v0, Lio/bidmachine/util/log/LoggerSettings;->logger:Lio/bidmachine/util/log/DefaultLoggerInstance;

    return-object v0
.end method
