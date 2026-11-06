###### Class com.ironsource.adqualitysdk.sdk.i.C0181 (com.ironsource.adqualitysdk.sdk.i.Κ)
.class public Lcom/ironsource/adqualitysdk/sdk/i/Κ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﻛ:Ljava/lang/String;


# instance fields
.field public final ｋ:J

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

.field public final ﾒ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "zSGEb+kRz671F7Br/RjVrssgu3/6HNK1/g==\n"

    const-string v1, "jEXVGoh9pto=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﻛ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/r;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 4
    iput-wide p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ｋ:J

    .line 5
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ﻴ;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻴ;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ﾒ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;
    .registers 13

    if-nez p1, :cond_7

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 14
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 16
    const-string v0, "Pv62mVlh\n"

    const-string v2, "X47G0jwYQJc=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 17
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3f

    .line 19
    :cond_26
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 20
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 22
    const-string v0, "q2Oz\n"

    const-string v2, "zCrXegGgKqA=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 23
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 27
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 29
    const-string v2, "QAbloA==\n"

    const-string v3, "KXWXw2Vd11E=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_54
    if-eqz p3, :cond_275

    .line 34
    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ｋ:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_6b

    .line 35
    const-string p3, "tq447w==\n"

    const-string v0, "2s1MnJPxU0M=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ｋ:J

    invoke-virtual {p1, p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    :cond_6b
    const-string p3, "dJZeLtw=\n"

    const-string v0, "F/kuXr0ieoA=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 38
    iget-boolean v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻏ:Z

    .line 39
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    const-string p3, "Ow7m\n"

    const-string v0, "X2eSculZmYg=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 41
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    .line 42
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string p3, "S2DG\n"

    const-string v0, "Pgmiu+gnpCE=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    monitor-enter v2

    .line 44
    :try_start_94
    iget-object v0, v2, Lcom/ironsource/adqualitysdk/sdk/i/r;->ｋ:Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_271

    monitor-exit v2

    .line 45
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string p3, "Z5I=\n"

    const-string v0, "EvF7RENR2kA=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 47
    iget-boolean v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻛ:Z

    .line 48
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 49
    const-string p3, "Vvw=\n"

    const-string v0, "IoYUbf8cckQ=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    invoke-virtual {p1, p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 50
    const-string p3, "VzJqq54=\n"

    const-string v0, "I0I8zuxnt/0=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string p3, "GA==\n"

    const-string v0, "bH6A/jqsLsA=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/র;->ﾒ:Ljava/lang/String;

    .line 52
    :try_start_e0
    const-string v0, "oTPLS7+lYZm7b8JLuqdplKcuiDCkonyUkjDHHK+5\n"

    const-string v2, "wlymZcrLCO0=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/র;->ﺙ:Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e0 .. :try_end_ed} :catch_ee

    goto :goto_fe

    .line 56
    :catch_ee
    :try_start_ee
    const-string v0, "SR+zQNmy5LZZH6sc06WluU4Bqw/cqf+hWRS1QMOk4PZLGaxA46/ktUYRihzRo+66SxO1K8i07rZZ\nGbEA\n"

    const-string v2, "KnDebrDAi9g=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/র;->ﱡ:Ljava/lang/String;
    :try_end_fb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ee .. :try_end_fb} :catch_fc

    goto :goto_fe

    .line 59
    :catch_fc
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/র;->ﱟ:Ljava/lang/String;

    .line 60
    :goto_fe
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string p3, "aNFa8Xg=\n"

    const-string v0, "Bb4+lBRa0yw=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string p3, "6n6q0OnxBRbybaHX\n"

    const-string v0, "hx/EpY+QZmI=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string p3, "oCc5oGyiU6M=\n"

    const-string v0, "0EtY1ArNIc4=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "WovSP3Sw0g==\n"

    const-string v2, "O+W2TRvZts4=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string p3, "TWxp\n"

    const-string v0, "Ih8fEmkyy08=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ:Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/র;->ﾒ(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 71
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ:Landroid/content/Context;

    .line 72
    :try_start_144
    const-string v0, "Cg+tOk2uclgbBLslS7RlHwQP5wlhhFMlOD6eAWSOSSU/IJ0N\n"

    const-string v2, "a2HJSCLHFnY=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16d

    .line 74
    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾇ(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p3

    .line 75
    invoke-static {p1, p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_159
    .catchall {:try_start_144 .. :try_end_159} :catchall_15a

    goto :goto_16d

    :catchall_15a
    move-exception v0

    move-object p3, v0

    move-object v5, p3

    .line 76
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ:Ljava/lang/String;

    const-string p3, "wWTNwqZ1R9Xgf9HK9CJP1+021sOyOgbF6zba27E7Ug==\n"

    const-string v0, "hBa/rdRVJrE=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 78
    :cond_16d
    :goto_16d
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ:Landroid/content/Context;

    .line 79
    :try_start_16f
    const-string v0, "tLhU7TlNnwOhvk76\n"

    const-string v2, "19c6g1wu62o=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    const-string v2, "/CIfUHo=\n"

    const-string v3, "jEpwPh+S/SU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_209

    .line 84
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﭖ:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_209

    .line 86
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ףּ:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->סּ:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->טּ:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﬤ:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->爫:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->乁:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->丫:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_209

    .line 96
    sget-object p4, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ヶ:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    sget-object p4, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ヮ:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f5
    .catchall {:try_start_16f .. :try_end_1f5} :catchall_1f6

    goto :goto_209

    :catchall_1f6
    move-exception v0

    move-object p3, v0

    move-object v5, p3

    .line 102
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ:Ljava/lang/String;

    const-string p3, "e8WP8/tjl6da3pP7qS6ZoVfbmLzgLZCsHsOSvOw1k61K\n"

    const-string p4, "Prf9nIlD9sM=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    .line 103
    invoke-static/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 104
    :cond_209
    :goto_209
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ(Lorg/json/JSONObject;)V

    .line 105
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾇ(Lorg/json/JSONObject;)V

    .line 106
    const-string p3, "Z9XltQ==\n"

    const-string p4, "CaKEw1LtMoM=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 107
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 108
    :try_start_21f
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﮐ:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ƒ;->ﾒ()Lorg/json/JSONObject;

    move-result-object p3

    .line 110
    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p3

    .line 111
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22c
    .catch Lorg/json/JSONException; {:try_start_21f .. :try_end_22c} :catch_22c

    .line 112
    :catch_22c
    :try_start_22c
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 113
    iget-object p3, p3, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﱡ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 115
    const-string p3, "SI9BDpHcgPt2iVw+mg==\n"

    const-string p4, "KeswUfiy6Y8=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string p3, "lQXRUtRnrruTDdpP1GCko4UK\n"

    const-string p4, "4GS1IYsUy8g=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_275

    .line 118
    const-string p3, "fV9o4w==\n"

    const-string p4, "ECsMl58ais8=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_25c} :catch_25d

    goto :goto_275

    :catch_25d
    move-exception v0

    move-object p2, v0

    move-object v3, p2

    .line 121
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﻛ:Ljava/lang/String;

    const-string p2, "D6ocEojElDAusQAa2omQICv4ChyOhdU+ObcAXY6L1TE8vQAJ\n"

    const-string p3, "Sthuffrk9VQ=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 122
    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    goto :goto_275

    :catchall_271
    move-exception v0

    move-object p1, v0

    .line 123
    monitor-exit v2

    throw p1

    :cond_275
    :goto_275
    return-object p1
.end method

.method public final ﾒ(Z)Lorg/json/JSONObject;
    .registers 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ(Lorg/json/JSONObject;ZZZ)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾒ:Landroid/content/Context;

    .line 3
    :try_start_d
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/p;->ｋ:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 6
    const-string v1, "khQrOw==\n"

    const-string v2, "+3BNUkz/mZQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception v0

    move-object v4, v0

    .line 9
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﾒ:Ljava/lang/String;

    const-string v0, "fV/HKXYZNt4eUdYhMiJ/w0pJkgR2BDHDWlbbZWYYMcBNX9w=\n"

    const-string v2, "PjCyRRJ3Eao=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    :cond_3e
    return-object p1
.end method
