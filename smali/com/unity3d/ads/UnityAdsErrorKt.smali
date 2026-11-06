###### Class com.unity3d.ads.UnityAdsErrorKt (com.unity3d.ads.UnityAdsErrorKt)
.class public final Lcom/unity3d/ads/UnityAdsErrorKt;
.super Ljava/lang/Object;
.source "UnityAdsError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAdsErrorKt$WhenMappings;
    }
.end annotation


# static fields
.field private static final BOLD_LOAD_FAIL_MSG_PREF:Ljava/lang/String; = "Unity Ads SDK ad load failed:"

.field public static final MSG_BOLD_LOAD_FAIL_INSUFFICIENT_STORAGE:Ljava/lang/String; = "Unity Ads SDK ad load failed: Insufficient storage space on the device. Free up space and try again."

.field public static final MSG_BOLD_LOAD_FAIL_NETWORK_ERROR:Ljava/lang/String; = "Unity Ads SDK ad load failed: Network error occurred. Check your network connection and try again later."

.field public static final MSG_BOLD_LOAD_FAIL_NO_FILL:Ljava/lang/String; = "Unity Ads SDK ad load failed: No ad fill available for the requested placement."

.field public static final MSG_BOLD_LOAD_FAIL_PARSING_ERROR:Ljava/lang/String; = "Unity Ads SDK ad load failed: Internal error occurred while parsing ad response."

.field public static final MSG_BOLD_LOAD_FAIL_PLACEMENT_NOT_FOUND:Ljava/lang/String; = "Unity Ads SDK ad load failed: Placement not found. Use the correct placement ID from your Unity Ads Monetization dashboard."

.field public static final MSG_BOLD_LOAD_FAIL_PROTO_ERROR:Ljava/lang/String; = "Unity Ads SDK ad load failed: Internal protocol error occurred. Try again later."

.field public static final MSG_BOLD_LOAD_FAIL_SDK_NOT_INITIALIZED:Ljava/lang/String; = "Unity Ads SDK ad load failed: The Unity Ads SDK is not initialized. Initialize the SDK before loading ads."

.field public static final MSG_BOLD_LOAD_FAIL_TIME_OUT:Ljava/lang/String; = "Unity Ads SDK ad load failed: Request timed out. Check your network connection and try again later.\n"

.field public static final MSG_BOLD_LOAD_FAIL_UNSUPPORTED_PLACEMENT:Ljava/lang/String; = "Unity Ads SDK ad load failed: The placement ID doesn\u2019t match the ad format or the placement type. Check your placement settings in the Monetization dashboard."

.field public static final MSG_BOLD_SHOW_FAIL_AD_OBJECT_EXPIRED:Ljava/lang/String; = "Unity Ads SDK ad show failed: The ad has expired. Load a new ad."

.field public static final MSG_BOLD_SHOW_FAIL_ALREADY_SHOWING:Ljava/lang/String; = "Unity Ads SDK ad show failed: An ad is already being shown. Wait until the current ad finishes before showing a new one."

.field public static final MSG_BOLD_SHOW_FAIL_INTERNAL_ERROR:Ljava/lang/String; = "Unity Ads SDK ad show failed: Internal error occurred."

.field public static final MSG_BOLD_SHOW_FAIL_TIMEOUT:Ljava/lang/String; = "Unity Ads SDK ad show failed: Request timed out. Check your network connection and try again later."

.field public static final MSG_INIT_FAIL_GAME_NOT_FOUND:Ljava/lang/String; = "Invalid Game ID: %s. Verify the Game ID in your Unity Ads Monetization dashboard."

.field public static final MSG_INIT_FAIL_INSUFFICIENT_STORAGE:Ljava/lang/String; = "Unity Ads SDK initialization failed: Insufficient storage space on the device. Free up space and try again."

.field public static final MSG_INIT_FAIL_NETWORK_ERROR:Ljava/lang/String; = "Unity Ads SDK initialization failed: Network error occurred. Check your network connection and try again later."

.field public static final MSG_INIT_FAIL_PARSING_ERROR:Ljava/lang/String; = "Unity Ads SDK initialization failed: Internal protocol error occurred.Try again later."

.field public static final MSG_INIT_FAIL_SYSTEM_ERROR:Ljava/lang/String; = "Unity Ads SDK initialization failed: System error occurred. Try again later."

.field public static final MSG_INIT_FAIL_TIMEOUT:Ljava/lang/String; = "Unity Ads SDK initialization failed: Request timed out. Check your network connection and try again later."

.field public static final MSG_INIT_FAIL_UNKNOWN_ERROR:Ljava/lang/String; = "Unity Ads SDK initialization failed: Unknown error occurred."

.field public static final MSG_INIT_FAIL_WRONG_PLATFORM:Ljava/lang/String; = "Unity Ads SDK initialization failed: Game ID mismatch. Use the correct Game ID for the target platform from your Unity Ads Monetization dashboard."


# direct methods
.method public static final getInitErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/unity3d/ads/UnityAdsErrorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    packed-switch p0, :pswitch_data_36

    const/4 p0, 0x0

    return-object p0

    .line 66
    :pswitch_15
    const-string p0, "Unity Ads SDK initialization failed: Insufficient storage space on the device. Free up space and try again."

    return-object p0

    .line 65
    :pswitch_18
    const-string p0, "Unity Ads SDK initialization failed: Network error occurred. Check your network connection and try again later."

    return-object p0

    .line 64
    :pswitch_1b
    const-string p0, "Unity Ads SDK initialization failed: System error occurred. Try again later."

    return-object p0

    .line 63
    :pswitch_1e
    const-string p0, "Unity Ads SDK initialization failed: Internal protocol error occurred.Try again later."

    return-object p0

    .line 62
    :pswitch_21
    const-string p0, "Unity Ads SDK initialization failed: Game ID mismatch. Use the correct Game ID for the target platform from your Unity Ads Monetization dashboard."

    return-object p0

    .line 60
    :pswitch_24
    const-string p0, "Invalid Game ID: %s. Verify the Game ID in your Unity Ads Monetization dashboard."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :pswitch_2f
    const-string p0, "Unity Ads SDK initialization failed: Unknown error occurred."

    return-object p0

    .line 57
    :cond_32
    const-string p0, "Unity Ads SDK initialization failed: Request timed out. Check your network connection and try again later."

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_2f
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static synthetic getInitErrorMsg$default(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 55
    :cond_5
    invoke-static {p0, p1}, Lcom/unity3d/ads/UnityAdsErrorKt;->getInitErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getLoadErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/unity3d/ads/UnityAdsErrorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_2e

    const/4 p0, 0x0

    return-object p0

    .line 41
    :pswitch_12
    const-string p0, "Unity Ads SDK ad load failed: Internal error occurred while parsing ad response."

    return-object p0

    .line 40
    :pswitch_15
    const-string p0, "Unity Ads SDK ad load failed: Insufficient storage space on the device. Free up space and try again."

    return-object p0

    .line 39
    :pswitch_18
    const-string p0, "Unity Ads SDK ad load failed: Network error occurred. Check your network connection and try again later."

    return-object p0

    .line 38
    :pswitch_1b
    const-string p0, "Unity Ads SDK ad load failed: The placement ID doesn\u2019t match the ad format or the placement type. Check your placement settings in the Monetization dashboard."

    return-object p0

    .line 37
    :pswitch_1e
    const-string p0, "Unity Ads SDK ad load failed: Internal protocol error occurred. Try again later."

    return-object p0

    .line 36
    :pswitch_21
    const-string p0, "Unity Ads SDK ad load failed: Placement not found. Use the correct placement ID from your Unity Ads Monetization dashboard."

    return-object p0

    .line 35
    :pswitch_24
    const-string p0, "Unity Ads SDK ad load failed: The Unity Ads SDK is not initialized. Initialize the SDK before loading ads."

    return-object p0

    .line 34
    :pswitch_27
    const-string p0, "Unity Ads SDK ad load failed: No ad fill available for the requested placement."

    return-object p0

    .line 33
    :pswitch_2a
    const-string p0, "Unity Ads SDK ad load failed: Request timed out. Check your network connection and try again later.\n"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static final getShowErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/unity3d/ads/UnityAdsErrorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1b

    .line 81
    const-string p0, "Unity Ads SDK ad show failed: Internal error occurred."

    return-object p0

    .line 80
    :cond_1b
    const-string p0, "Unity Ads SDK ad show failed: An ad is already being shown. Wait until the current ad finishes before showing a new one."

    return-object p0

    .line 79
    :cond_1e
    const-string p0, "Unity Ads SDK ad show failed: The ad has expired. Load a new ad."

    return-object p0

    .line 78
    :cond_21
    const-string p0, "Unity Ads SDK ad show failed: Request timed out. Check your network connection and try again later."

    return-object p0
.end method

###### Class com.unity3d.ads.UnityAdsErrorKt.WhenMappings (com.unity3d.ads.UnityAdsErrorKt$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/UnityAdsErrorKt$WhenMappings;
.super Ljava/lang/Object;
.source "UnityAdsError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAdsErrorKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->values()[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_ADVIEWER:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_UNKNOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_82

    :catch_82
    :try_start_82
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8c
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_96

    :catch_96
    :try_start_96
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a0
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_aa
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_b4

    :catch_b4
    sput-object v0, Lcom/unity3d/ads/UnityAdsErrorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
