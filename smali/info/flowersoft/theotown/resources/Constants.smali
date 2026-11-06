###### Class info.flowersoft.theotown.resources.Constants (info.flowersoft.theotown.resources.Constants)
.class public final Linfo/flowersoft/theotown/resources/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static MAX_TEXTURE_SIZE:I

.field public static MAX_TEXTURE_UNITS:I

.field public static NO_REQUIREMENTS:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public static PCAP_SUPPORTED:Z
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public static final SMOOTH_ZOOM_STEP:F

.field public static VERDÄCHTIG:I
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    .line 49
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Linfo/flowersoft/theotown/resources/Constants;->SMOOTH_ZOOM_STEP:F

    const/4 v0, 0x0

    .line 145
    sput v0, Linfo/flowersoft/theotown/resources/Constants;->VERDÄCHTIG:I

    .line 148
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Constants;->PCAP_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MS_PER_IDLE_DAY()J
    .registers 4
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 77
    const-string v0, "construction"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "idle day ms"

    const-wide/32 v2, 0x13880

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
