###### Class io.bidmachine.utils.DeviceUtils (io.bidmachine.utils.DeviceUtils)
.class public Lio/bidmachine/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBatteryLevel(Landroid/content/Context;)Ljava/lang/Double;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lio/bidmachine/utils/DeviceUtils;->registerInternalReceiver(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 4
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5
    const-string v2, "scale"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ltz v0, :cond_2f

    if-lez p0, :cond_2f

    int-to-double v0, v0

    int-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_9

    .line 3
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 5
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1c

    const/16 p0, 0x9

    if-eq v0, p0, :cond_19

    .line 13
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 14
    :cond_19
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_ETHERNET:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 15
    :cond_1c
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_WIFI:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 16
    :cond_1f
    invoke-static {p0}, Lio/bidmachine/utils/DeviceUtils;->getMobileNetworkType(Landroid/net/NetworkInfo;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    return-object v1

    .line 6
    :cond_11
    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    return-object v0

    .line 10
    :cond_1e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 11
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v1}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz v0, :cond_31

    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getInputLanguageSet(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "input_method"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_10

    goto :goto_7b

    .line 8
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    .line 11
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 14
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 17
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 20
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 22
    :cond_53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 23
    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_66

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 27
    :cond_66
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 32
    :cond_6a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 34
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobileNetworkType(Landroid/net/NetworkInfo;)Lcom/explorestack/protobuf/adcom/ConnectionType;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_16

    .line 25
    :pswitch_7
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_4G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 26
    :pswitch_a
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_5G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 27
    :pswitch_d
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_3G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 28
    :pswitch_10
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_2G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    .line 29
    :pswitch_13
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_UNKNOWN:Lcom/explorestack/protobuf/adcom/ConnectionType;

    return-object p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_7
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyStatus(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionStatus;
    .registers 1

    .line 4
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-nez p0, :cond_9

    .line 6
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionStatus;->CONNECTION_STATUS_UNDEFINED:Lcom/explorestack/protobuf/adcom/ConnectionStatus;

    return-object p0

    .line 8
    :cond_9
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 9
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionStatus;->CONNECTION_STATUS_ENABLED:Lcom/explorestack/protobuf/adcom/ConnectionStatus;

    return-object p0

    .line 11
    :cond_12
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionStatus;->CONNECTION_STATUS_DISABLED:Lcom/explorestack/protobuf/adcom/ConnectionStatus;

    return-object p0
.end method

.method public static getScreenBrightness(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenBrightnessRatio(Landroid/content/Context;)Ljava/lang/Double;
    .registers 5

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/DeviceUtils;->getScreenBrightness(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenDpi(Landroid/content/Context;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static getSha1Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lio/bidmachine/utils/DeviceUtils;->getShaSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSha256Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lio/bidmachine/utils/DeviceUtils;->getShaSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShaSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4
    array-length v1, p0

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    const/4 v1, 0x0

    .line 7
    aget-object p0, p0, v1

    .line 8
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 9
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 11
    invoke-static {p0}, Lio/bidmachine/core/Utils;->toSignatureHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    return-object p0

    :catchall_29
    move-exception p0

    .line 13
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getVpnStatus(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionStatus;
    .registers 2

    .line 4
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getActiveNetworkCapabilities(Landroid/content/Context;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_9

    .line 6
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionStatus;->CONNECTION_STATUS_UNDEFINED:Lcom/explorestack/protobuf/adcom/ConnectionStatus;

    return-object p0

    :cond_9
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 9
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionStatus;->CONNECTION_STATUS_ENABLED:Lcom/explorestack/protobuf/adcom/ConnectionStatus;

    return-object p0

    .line 11
    :cond_13
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionStatus;->CONNECTION_STATUS_DISABLED:Lcom/explorestack/protobuf/adcom/ConnectionStatus;

    return-object p0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBatterySaverEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_13

    .line 3
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCharging(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lio/bidmachine/utils/DeviceUtils;->registerInternalReceiver(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 4
    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 5
    :cond_1f
    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDarkModeEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isDoNotDisturbOn(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static registerInternalReceiver(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_d

    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v2, p1, v0}, Lcom/android/billingclient/api/zzr$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 4
    :cond_d
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
