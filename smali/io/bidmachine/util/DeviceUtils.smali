###### Class io.bidmachine.util.DeviceUtils (io.bidmachine.util.DeviceUtils)
.class public final Lio/bidmachine/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/DeviceUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/DeviceUtils;

    invoke-direct {v0}, Lio/bidmachine/util/DeviceUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/DeviceUtils;->INSTANCE:Lio/bidmachine/util/DeviceUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBuildId()Ljava/lang/String;
    .registers 2

    .line 43
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getDeviceType(Landroid/content/Context;)Lio/bidmachine/util/DeviceType;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getDeviceType(Landroid/content/Context;)Lio/bidmachine/util/DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public static final getManufacturer()Ljava/lang/String;
    .registers 2

    .line 49
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getModel()Ljava/lang/String;
    .registers 2

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getOsVersion()Ljava/lang/String;
    .registers 2

    .line 40
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getPhoneMCCMNC(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getPhoneMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPhoneNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getPhoneNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPhoneSimCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getPhoneSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPhoneSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getPhoneSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getScreenDensity(Landroid/content/Context;)F
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenDensity(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static final getScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static final isNetworkRoaming(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->isNetworkRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final isTablet(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
