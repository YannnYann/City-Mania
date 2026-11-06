###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer)
.class public final Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
.super Ljava/lang/Object;
.source "HandleInvocationsFromAdViewer.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandleInvocationsFromAdViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleInvocationsFromAdViewer.kt\ncom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,222:1\n16#2,4:223\n16#2,4:227\n16#2,4:231\n16#2,4:235\n16#2,4:239\n16#2,4:243\n16#2,4:247\n16#2,4:251\n16#2,4:255\n16#2,4:259\n16#2,4:263\n16#2,4:267\n16#2,4:271\n16#2,4:275\n16#2,4:279\n16#2,4:283\n16#2,4:287\n16#2,4:291\n16#2,4:295\n16#2,4:299\n16#2,4:303\n16#2,4:307\n16#2,4:311\n16#2,4:315\n16#2,4:319\n16#2,4:323\n16#2,4:327\n16#2,4:331\n16#2,4:335\n16#2,4:339\n16#2,4:343\n16#2,4:347\n16#2,4:351\n16#2,4:355\n16#2,4:359\n16#2,4:363\n16#2,4:367\n16#2,4:371\n16#2,4:375\n16#2,4:379\n16#2,4:383\n16#2,4:387\n16#2,4:391\n*S KotlinDebug\n*F\n+ 1 HandleInvocationsFromAdViewer.kt\ncom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer\n*L\n130#1:223,4\n131#1:227,4\n132#1:231,4\n133#1:235,4\n134#1:239,4\n135#1:243,4\n136#1:247,4\n137#1:251,4\n138#1:255,4\n140#1:259,4\n148#1:263,4\n149#1:267,4\n150#1:271,4\n151#1:275,4\n152#1:279,4\n153#1:283,4\n154#1:287,4\n155#1:291,4\n156#1:295,4\n157#1:299,4\n158#1:303,4\n160#1:307,4\n161#1:311,4\n162#1:315,4\n163#1:319,4\n164#1:323,4\n165#1:327,4\n166#1:331,4\n167#1:335,4\n168#1:339,4\n169#1:343,4\n170#1:347,4\n171#1:351,4\n172#1:355,4\n173#1:359,4\n174#1:363,4\n175#1:367,4\n176#1:371,4\n178#1:375,4\n179#1:379,4\n180#1:383,4\n181#1:387,4\n183#1:391,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_AD_DATA:Ljava/lang/String; = "adData"

.field public static final KEY_AD_DATA_REFRESH_TOKEN:Ljava/lang/String; = "adDataRefreshToken"

.field public static final KEY_AD_REFRESH_INVALIDATION_REASON:Ljava/lang/String; = "invalidationReason"

.field public static final KEY_AD_STRING:Ljava/lang/String; = "adString"

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_AD_UNIT_ID:Ljava/lang/String; = "adUnitId"

.field public static final KEY_DOWNLOAD_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_DOWNLOAD_URL:Ljava/lang/String; = "url"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final KEY_IMPRESSION_CONFIG:Ljava/lang/String; = "impressionConfig"

.field public static final KEY_IMPRESSION_OPPORTUNITY_ID:Ljava/lang/String; = "impressionOpportunityId"

.field public static final KEY_IS_HEADER_BIDDING:Ljava/lang/String; = "isHeaderBidding"

.field public static final KEY_LOAD_OPTIONS:Ljava/lang/String; = "loadOptions"

.field public static final KEY_NATIVE_CONTEXT:Ljava/lang/String; = "nativeContext"

.field public static final KEY_OMID:Ljava/lang/String; = "openMeasurement"

.field public static final KEY_OMJS_SERVICE:Ljava/lang/String; = "serviceFilePath"

.field public static final KEY_OMJS_SESSION:Ljava/lang/String; = "sessionFilePath"

.field public static final KEY_OM_PARTNER:Ljava/lang/String; = "partnerName"

.field public static final KEY_OM_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"

.field public static final KEY_OM_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final KEY_PAYLOAD_VERSION:Ljava/lang/String; = "payloadVersion"

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final KEY_PLACEMENT_NAME:Ljava/lang/String; = "placementName"

.field public static final KEY_PRIVACY_UPDATE_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_PRIVACY_UPDATE_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_QUERY_ID:Ljava/lang/String; = "queryId"

.field public static final KEY_TRACKING_TOKEN:Ljava/lang/String; = "trackingToken"

.field public static final KEY_USE_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "useActivityForResult"

.field public static final KEY_VIDEO_LENGTH:Ljava/lang/String; = "videoLength"


# direct methods
.method public static synthetic $r8$lambda$3y89Nsd4IrjmvrwpExjQQBAH0nA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$46(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$46wLnZBd2PMtcZ36t97BGIS7o80(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$29(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4_mRzp8XL6qgtqSFOS4GnkcKItQ(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$53(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5JxCl2dFQLtRYGAMG0ONMj5dUpY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$33(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5inWs1I8bc7fDjgvdinQRHguQe8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$39(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6z1_dopUFs8t5PKzxJQejO7yjnI(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$10(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7SmwzXhSBcQ8e1kgdzn4NkV5t1A()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$14()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$A0sZC2D-OoJV0NXVTZTeA8bgnxo(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$20(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BgYV7GoSLByEa6W1wKYr-KaCxTE(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$34(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0xh00pCgHknTDlh4kV-nAkuKBY()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$47()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$IDHryMgMiuPVvTWNjOE2_5BCsxY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$25(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IRnqfBm2gO25ShgSMfPuu-ZWRuA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$28(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K2o1EmyG-OZ__GPTNXhDNWxHXHc()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$12()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$K5zF-zHqPwLq94sAZRl6zHLpE4I(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$37(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KF27caJZxNc2wRjKhJp-Vi56ROA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$18(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LbG17BBuVwC17BJIuh44VzaX9Do()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$13()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MGoaE6hrlvScoQZb-XK45yy3430(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$27(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MPMAA8Lt-L13JX-Ozo1ZyoulGcM()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$17()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MaAQg57ILhCSTAAbb-B2HvPquaY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mrq8olfjBxHhc5iU0x57Y7tCE0k(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$31(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N2cP6nVS1pbmyf1twX6cNcbqmyU(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$41(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O5vDeNiNlhuyrKIm1V5K624uZOw(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OK2EROUXjZuMcOg9tUTYzwgt6fg(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$51(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RSznCWi4_L1s0dHBuCNJLxXM-_Y(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$21(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RVkQev08XhEicbMuQLcgyY8vymQ()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$16()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$RsAU4CNHeDBm0vi83-NQlKsDhww(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$50(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Scq1vxvH5O4jffDvGA1JFUKjm3w(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$24(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SnaFZSZGtRbAm9_VPL7uOTOf9V8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$5(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SncR8IQ9FvuseNc6Nbm62r31qYk(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$1(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SxC_58wok59Qs5P8hx6WRJvo1qU(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$45(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T169iWjIgrGcevABIboux390VA4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$40(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZDsg9Js5hSwfryCljWnxys90Fac(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$6(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zx2QzoZq3XLJt8ySP9_ovtwq46w(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$49(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZzlxPw9dyY0GVTl7F0P0pTbnwCs()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$11()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$cY7EwasS-DUMf9NIgY6vO85StB8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$48(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$emfi_vS_Rmm_SkD_2EyhGOMPYx4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$3(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ernJCQ5UWGpZXLuaZtyirrfAxWo(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$43(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hXfGrmR9HTKQmxEFZTqVYPJAJwM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$35(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ig2mC_ae0dhM1RBSKOpY3kkmmOM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$44(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jhPujhRftw-TxUIBqZQ7H9nGysA()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$15()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$l_woSwFQB6DcMinMv2myP278fD4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$23(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o_0rZiePST1mEStDexgwYDp6hz0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$32(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qa1orCqPn6ESLx1SlsEatWMVj5g(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$9(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qkX2WBClVcQHmO10via4mKYj8XY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$22(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r_h_3K1e33QXN3WqYbVZTAUS_fM(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$52(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$szMzniHXKzDqfn19uzo7yVAk4ms(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$19(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tHeraqAA050h3KmcpS_5Eaa0xbE(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$38(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tO9Ws8-xszJgIQg1F_lFK4YohgA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$2(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u10l7CE3dn8mQwzRz-wbDaRUFdk(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$7(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$un9zqElhxCdoTdSj0ZiFOwLIRYs(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$42(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v7IYFGgpqUuZXcGaOftMhaKUrho(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$8(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vbc8lbqA3oxCaWKF_LisBA7tQHM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$36(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yLLkk1lnclzm3RffZmbGX1VgYuQ(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$30(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yTlltj3ZbGP_gi30SGmn5Ba_0rY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$26(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 14

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    const-class v1, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/IsOMActivated;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/unity3d/ads/core/domain/om/IsOMActivated;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 130
    invoke-static/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getAdContext-yLuu4LI(Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/om/IsOMActivated;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$1(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 131
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getConnectionType(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$10(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 140
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendOperativeEvent(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$11()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 141
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->writeStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$12()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 142
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->readStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$13()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 143
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->deleteStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$14()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 144
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->clearStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$15()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 145
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getKeysStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$16()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 146
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$17()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 147
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$18(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 148
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getPrivacyFsm(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$19(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 149
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setPrivacyFsm(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$2(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 132
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getDeviceVolume(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$20(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 150
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getPrivacy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$21(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 151
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setPrivacy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$22(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 152
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getAllowedPii(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$23(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 153
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setAllowedPii(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$24(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 154
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getSessionToken(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$25(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 155
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->markCampaignStateShown(Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$26(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/Refresh;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/Refresh;

    .line 156
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->refreshAdData(Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$27(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/SendAdViewerRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/SendAdViewerRequest;

    .line 157
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendAdViewerRequest(Lcom/unity3d/ads/core/domain/SendAdViewerRequest;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$28(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 158
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->updateCampaignState(Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$29(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 159
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->updateTrackingToken(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$3(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 133
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getDeviceMaxVolume(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$30(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    .line 160
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendPrivacyUpdateRequest(Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$31(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 161
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendDiagnosticEvent(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$32(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 162
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->incrementBannerImpressionCount(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$33(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 5

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    const-class v1, Lcom/unity3d/ads/core/domain/CacheFile;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/domain/CacheFile;

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 163
    invoke-static {v0, p1, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->download(Lcom/unity3d/ads/core/domain/CacheFile;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$34(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/CacheFile;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/CacheFile;

    .line 164
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->downloadWithProgress(Lcom/unity3d/ads/core/domain/CacheFile;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$35(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/GetIsFileCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/GetIsFileCache;

    .line 165
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->isFileCached(Lcom/unity3d/ads/core/domain/GetIsFileCache;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$36(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;

    .line 166
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omStartSession(Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$37(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/OmFinishSession;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/OmFinishSession;

    .line 167
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omFinishSession(Lcom/unity3d/ads/core/domain/om/OmFinishSession;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$38(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;

    .line 168
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omImpression(Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$39(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/GetOmData;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/GetOmData;

    .line 169
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omGetData(Lcom/unity3d/ads/core/domain/om/GetOmData;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 134
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getScreenHeight(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$40(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    .line 170
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->isAttributionAvailable(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$41(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    .line 171
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->attributionRegisterView(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$42(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    .line 172
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->attributionRegisterClick(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$43(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 173
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenIncrementWins(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$44(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 174
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenIncrementStarts(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$45(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 175
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenReset(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$46(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;

    .line 176
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->loadOfferwallAd(Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$47()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 177
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->showOfferwallAd()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$48(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;

    .line 178
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->isOfferwallAdReady(Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$49(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 179
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->GET:Lcom/unity3d/services/core/network/model/RequestType;

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    .line 179
    invoke-static {v0, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->request(Lcom/unity3d/services/core/network/model/RequestType;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$5(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 3

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 135
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getScreenWidth(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$50(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 180
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    .line 180
    invoke-static {v0, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->request(Lcom/unity3d/services/core/network/model/RequestType;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$51(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 181
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->HEAD:Lcom/unity3d/services/core/network/model/RequestType;

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    .line 181
    invoke-static {v0, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->request(Lcom/unity3d/services/core/network/model/RequestType;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$52(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 182
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setOpportunityTTL(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$53(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 183
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getExtra(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$6(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    .line 136
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getBlackPixelPercentage(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$7(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    .line 137
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->captureScreenshot(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$8(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 4

    .line 19
    invoke-interface {p1}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p1

    const-class v0, Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    .line 138
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->openUrl(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleOpenUrl;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$9(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .registers 1

    .line 139
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setOrientation(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;
    .registers 2

    .line 118
    invoke-static {p0}, Lcom/unity3d/services/core/di/IServiceComponent$DefaultImpls;->getServiceProvider(Lcom/unity3d/services/core/di/IServiceComponent;)Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Ljava/util/Map;
    .registers 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/unity3d/ads/adplayer/ExposedFunction;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v5, p4

    const-string v0, "adData"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adDataRefreshToken"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionConfig"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObject"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {v1}, Lcom/unity3d/ads/core/data/model/AdData;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v3}, Lcom/unity3d/ads/core/data/model/ImpressionConfig;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v2}, Lcom/unity3d/ads/core/data/model/AdDataRefreshToken;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v0

    .line 130
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.getAdContext"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 131
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.core.api.DeviceInfo.getConnectionType"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 132
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.core.api.DeviceInfo.getDeviceVolume"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 133
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v6, "com.unity3d.services.core.api.DeviceInfo.getDeviceMaxVolume"

    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 134
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v7, "com.unity3d.services.core.api.DeviceInfo.getScreenHeight"

    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 135
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v8, "com.unity3d.services.core.api.DeviceInfo.getScreenWidth"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 136
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;

    invoke-direct {v2, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v9, "com.unity3d.services.ads.api.AdViewer.getBlackPixelPercentage"

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 137
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;

    invoke-direct {v2, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v10, "com.unity3d.services.ads.api.AdViewer.captureScreenshot"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 138
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;

    invoke-direct {v2, v5, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v11, "com.unity3d.services.ads.api.AdViewer.openUrl"

    invoke-static {v11, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 139
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;

    invoke-direct {v2, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v12, "com.unity3d.services.ads.api.AdViewer.setOrientation"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 140
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v13, "com.unity3d.services.ads.api.AdViewer.sendOperativeEvent"

    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 141
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2;-><init>()V

    const-string v14, "com.unity3d.services.core.api.Storage.write"

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 142
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3;-><init>()V

    const-string v15, "com.unity3d.services.core.api.Storage.read"

    invoke-static {v15, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    .line 143
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4;-><init>()V

    move-object/from16 p1, v0

    const-string v0, "com.unity3d.services.core.api.Storage.delete"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    .line 144
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "com.unity3d.services.core.api.Storage.clear"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v17

    .line 145
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "com.unity3d.services.core.api.Storage.getKeys"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v18

    .line 146
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "com.unity3d.services.core.api.Storage.get"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v19

    .line 147
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "com.unity3d.services.core.api.Storage.set"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v20

    .line 148
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.getPrivacyFsm"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v21

    .line 149
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.setPrivacyFsm"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v22

    .line 150
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.getPrivacyPayload"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v23

    .line 151
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.setPrivacyPayload"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v24

    .line 152
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.getPrivacyAllowedPii"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v25

    .line 153
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.setPrivacyAllowedPii"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v26

    .line 154
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.getSessionToken"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v27

    .line 155
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.markCampaignStateAsShown"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v28

    .line 156
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.refreshAdData"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v29

    .line 157
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.sendAdViewerRequest"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v30

    .line 158
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.updateCampaignState"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v31

    .line 159
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;

    invoke-direct {v0, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.updateTrackingToken"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v32

    .line 160
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.sendPrivacyUpdateRequest"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v33

    .line 161
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.sendDiagnosticEvent"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v34

    .line 162
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.incrementBannerImpressionCount"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v35

    .line 163
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.download"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v36

    .line 164
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.downloadWithProgress"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v37

    .line 165
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.isFileCached"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v38

    .line 166
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.omidStartSession"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v39

    .line 167
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.omidFinishSession"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v40

    .line 168
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.omidImpression"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v41

    .line 169
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.omidGetData"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v42

    .line 170
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.isAttributionAvailable"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v43

    .line 171
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.attributionRegisterView"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v44

    .line 172
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.attributionRegisterClick"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v45

    .line 173
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementWins"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v46

    .line 174
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementStarts"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v47

    .line 175
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.hbTokenReset"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v48

    .line 176
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.loadOfferwallAd"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v49

    .line 177
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41;-><init>()V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.showOfferwallAd"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v50

    .line 178
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.isOfferwallAdReady"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v51

    .line 179
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.core.api.Request.get"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v52

    .line 180
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.core.api.Request.post"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v53

    .line 181
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string v2, "com.unity3d.services.core.api.Request.head"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v54

    .line 182
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;

    invoke-direct {v0, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.setOpportunityTTL"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v55

    .line 183
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string v2, "com.unity3d.services.ads.api.AdViewer.getExtra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v56

    move-object/from16 v5, p1

    filled-new-array/range {v3 .. v56}, [Lkotlin/Pair;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer.Companion (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$Companion)
.class public final Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
.super Ljava/lang/Object;
.source "HandleInvocationsFromAdViewer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$4:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;->f$4:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$O5vDeNiNlhuyrKIm1V5K624uZOw(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$6z1_dopUFs8t5PKzxJQejO7yjnI(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$szMzniHXKzDqfn19uzo7yVAk4ms(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$SncR8IQ9FvuseNc6Nbm62r31qYk(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$A0sZC2D-OoJV0NXVTZTeA8bgnxo(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$RSznCWi4_L1s0dHBuCNJLxXM-_Y(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$qkX2WBClVcQHmO10via4mKYj8XY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$l_woSwFQB6DcMinMv2myP278fD4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$Scq1vxvH5O4jffDvGA1JFUKjm3w(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$IDHryMgMiuPVvTWNjOE2_5BCsxY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$yTlltj3ZbGP_gi30SGmn5Ba_0rY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$MGoaE6hrlvScoQZb-XK45yy3430(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$ZzlxPw9dyY0GVTl7F0P0pTbnwCs()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$IRnqfBm2gO25ShgSMfPuu-ZWRuA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$46wLnZBd2PMtcZ36t97BGIS7o80(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$tO9Ws8-xszJgIQg1F_lFK4YohgA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$yLLkk1lnclzm3RffZmbGX1VgYuQ(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$Mrq8olfjBxHhc5iU0x57Y7tCE0k(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$o_0rZiePST1mEStDexgwYDp6hz0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$5JxCl2dFQLtRYGAMG0ONMj5dUpY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$BgYV7GoSLByEa6W1wKYr-KaCxTE(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$hXfGrmR9HTKQmxEFZTqVYPJAJwM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$vbc8lbqA3oxCaWKF_LisBA7tQHM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$K2o1EmyG-OZ__GPTNXhDNWxHXHc()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$K5zF-zHqPwLq94sAZRl6zHLpE4I(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$tHeraqAA050h3KmcpS_5Eaa0xbE(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$5inWs1I8bc7fDjgvdinQRHguQe8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$emfi_vS_Rmm_SkD_2EyhGOMPYx4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$T169iWjIgrGcevABIboux390VA4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$N2cP6nVS1pbmyf1twX6cNcbqmyU(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$un9zqElhxCdoTdSj0ZiFOwLIRYs(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$ernJCQ5UWGpZXLuaZtyirrfAxWo(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$ig2mC_ae0dhM1RBSKOpY3kkmmOM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$SxC_58wok59Qs5P8hx6WRJvo1qU(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$LbG17BBuVwC17BJIuh44VzaX9Do()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$3y89Nsd4IrjmvrwpExjQQBAH0nA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$G0xh00pCgHknTDlh4kV-nAkuKBY()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$cY7EwasS-DUMf9NIgY6vO85StB8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$Zx2QzoZq3XLJt8ySP9_ovtwq46w(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$MaAQg57ILhCSTAAbb-B2HvPquaY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$RsAU4CNHeDBm0vi83-NQlKsDhww(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$OK2EROUXjZuMcOg9tUTYzwgt6fg(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$r_h_3K1e33QXN3WqYbVZTAUS_fM(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$4_mRzp8XL6qgtqSFOS4GnkcKItQ(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$SnaFZSZGtRbAm9_VPL7uOTOf9V8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$7SmwzXhSBcQ8e1kgdzn4NkV5t1A()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$ZDsg9Js5hSwfryCljWnxys90Fac(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field public final synthetic f$1:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;->f$1:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$u10l7CE3dn8mQwzRz-wbDaRUFdk(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/model/AdObject;

.field public final synthetic f$1:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;->f$1:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;->f$1:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$v7IYFGgpqUuZXcGaOftMhaKUrho(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;->f$0:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$qa1orCqPn6ESLx1SlsEatWMVj5g(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$jhPujhRftw-TxUIBqZQ7H9nGysA()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$RVkQev08XhEicbMuQLcgyY8vymQ()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$MPMAA8Lt-L13JX-Ozo1ZyoulGcM()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9 (com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;->f$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->$r8$lambda$KF27caJZxNc2wRjKhJp-Vi56ROA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method
