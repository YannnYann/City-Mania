###### Class io.bidmachine.TrackEventType (io.bidmachine.TrackEventType)
.class public final enum Lio/bidmachine/TrackEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/TrackEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitCheapestDequeued:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitExpired:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitLoadFinish:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitLoadStart:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitLoss:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitPaidEvent:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitShown:Lio/bidmachine/TrackEventType;

.field public static final enum AdUnitWin:Lio/bidmachine/TrackEventType;

.field public static final enum AnrReport:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequest:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestCancel:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestExpired:Lio/bidmachine/TrackEventType;

.field public static final enum BrokenCreativeDetector:Lio/bidmachine/TrackEventType;

.field public static final enum Click:Lio/bidmachine/TrackEventType;

.field public static final enum Close:Lio/bidmachine/TrackEventType;

.field public static final enum CrashReport:Lio/bidmachine/TrackEventType;

.field public static final enum Destroy:Lio/bidmachine/TrackEventType;

.field public static final enum EngagedClick:Lio/bidmachine/TrackEventType;

.field public static final enum Error:Lio/bidmachine/TrackEventType;

.field public static final enum Expired:Lio/bidmachine/TrackEventType;

.field public static final enum FillAd:Lio/bidmachine/TrackEventType;

.field public static final enum GetBidToken:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

.field public static final enum Impression:Lio/bidmachine/TrackEventType;

.field public static final enum ImpressionOpportunity:Lio/bidmachine/TrackEventType;

.field public static final enum InitLoading:Lio/bidmachine/TrackEventType;

.field public static final enum Load:Lio/bidmachine/TrackEventType;

.field public static final enum MediationLoss:Lio/bidmachine/TrackEventType;

.field public static final enum MediationWin:Lio/bidmachine/TrackEventType;

.field public static final enum Show:Lio/bidmachine/TrackEventType;

.field public static final enum TrackingError:Lio/bidmachine/TrackEventType;

.field public static final enum WaterfallLoadFinish:Lio/bidmachine/TrackEventType;

.field public static final enum WaterfallLoadStart:Lio/bidmachine/TrackEventType;


# instance fields
.field private final actionValue:I


# direct methods
.method private static synthetic $values()[Lio/bidmachine/TrackEventType;
    .registers 37

    .line 1
    sget-object v1, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    sget-object v2, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    sget-object v3, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    sget-object v4, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    sget-object v5, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    sget-object v6, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    sget-object v7, Lio/bidmachine/TrackEventType;->BrokenCreativeDetector:Lio/bidmachine/TrackEventType;

    sget-object v8, Lio/bidmachine/TrackEventType;->EngagedClick:Lio/bidmachine/TrackEventType;

    sget-object v9, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    sget-object v10, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    sget-object v11, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    sget-object v12, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    sget-object v13, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    sget-object v14, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    sget-object v15, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    sget-object v16, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    sget-object v17, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    sget-object v18, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    sget-object v19, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    sget-object v20, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    sget-object v21, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    sget-object v22, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    sget-object v23, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    sget-object v24, Lio/bidmachine/TrackEventType;->WaterfallLoadStart:Lio/bidmachine/TrackEventType;

    sget-object v25, Lio/bidmachine/TrackEventType;->WaterfallLoadFinish:Lio/bidmachine/TrackEventType;

    sget-object v26, Lio/bidmachine/TrackEventType;->AdUnitLoadStart:Lio/bidmachine/TrackEventType;

    sget-object v27, Lio/bidmachine/TrackEventType;->AdUnitLoadFinish:Lio/bidmachine/TrackEventType;

    sget-object v28, Lio/bidmachine/TrackEventType;->AdUnitExpired:Lio/bidmachine/TrackEventType;

    sget-object v29, Lio/bidmachine/TrackEventType;->AdUnitCheapestDequeued:Lio/bidmachine/TrackEventType;

    sget-object v30, Lio/bidmachine/TrackEventType;->AdUnitShown:Lio/bidmachine/TrackEventType;

    sget-object v31, Lio/bidmachine/TrackEventType;->AdUnitWin:Lio/bidmachine/TrackEventType;

    sget-object v32, Lio/bidmachine/TrackEventType;->AdUnitLoss:Lio/bidmachine/TrackEventType;

    sget-object v33, Lio/bidmachine/TrackEventType;->AdUnitPaidEvent:Lio/bidmachine/TrackEventType;

    sget-object v34, Lio/bidmachine/TrackEventType;->ImpressionOpportunity:Lio/bidmachine/TrackEventType;

    sget-object v35, Lio/bidmachine/TrackEventType;->CrashReport:Lio/bidmachine/TrackEventType;

    sget-object v36, Lio/bidmachine/TrackEventType;->AnrReport:Lio/bidmachine/TrackEventType;

    filled-new-array/range {v1 .. v36}, [Lio/bidmachine/TrackEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    const/16 v2, 0x201

    const-string v3, "GetBidToken"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    .line 2
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x1

    const/16 v2, 0x1fa

    const-string v3, "InitLoading"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 3
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x2

    const/16 v2, 0x1fb

    const-string v3, "AuctionRequest"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 4
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x3

    const/16 v2, 0x1fc

    const-string v3, "AuctionRequestCancel"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    .line 5
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x4

    const/16 v2, 0x1fd

    const-string v3, "AuctionRequestExpired"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 6
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x5

    const/16 v2, 0x1fe

    const-string v3, "AuctionRequestDestroy"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    .line 7
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x6

    const/16 v2, 0x203

    const-string v3, "BrokenCreativeDetector"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->BrokenCreativeDetector:Lio/bidmachine/TrackEventType;

    .line 8
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/4 v1, 0x7

    const/16 v2, 0x4b1

    const-string v3, "EngagedClick"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->EngagedClick:Lio/bidmachine/TrackEventType;

    .line 9
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x8

    const/16 v2, 0x1f4

    const-string v3, "Load"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 10
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x9

    const/16 v2, 0x200

    const-string v3, "FillAd"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    .line 11
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0xa

    const/16 v2, 0x1f6

    const-string v3, "Impression"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    .line 12
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0xb

    const/16 v2, 0x1f5

    const-string v3, "Show"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 13
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0xc

    const/16 v2, 0x1f7

    const-string v3, "Click"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    .line 14
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0xd

    const/16 v2, 0x1f8

    const-string v3, "Close"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    .line 15
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0xe

    const/16 v2, 0x1ff

    const-string v3, "Expired"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    .line 16
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0xf

    const/16 v2, 0x1f9

    const-string v3, "Destroy"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    .line 17
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x10

    const/16 v2, 0x3e8

    const-string v3, "Error"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 18
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x11

    const/16 v2, 0x3e9

    const-string v3, "TrackingError"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 19
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x12

    const/16 v2, 0x2bf

    const-string v3, "HeaderBiddingNetworksPrepare"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 20
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x13

    const/16 v2, 0x2bd

    const-string v3, "HeaderBiddingNetworkInitialize"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 21
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x14

    const/16 v2, 0x2be

    const-string v3, "HeaderBiddingNetworkPrepare"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    .line 22
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x15

    const/16 v2, 0x326

    const-string v3, "MediationWin"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 23
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x16

    const/16 v2, 0x325

    const-string v3, "MediationLoss"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    .line 24
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x17

    const/16 v2, 0x385

    const-string v3, "WaterfallLoadStart"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->WaterfallLoadStart:Lio/bidmachine/TrackEventType;

    .line 25
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x18

    const/16 v2, 0x388

    const-string v3, "WaterfallLoadFinish"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->WaterfallLoadFinish:Lio/bidmachine/TrackEventType;

    .line 26
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x19

    const/16 v2, 0x386

    const-string v3, "AdUnitLoadStart"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitLoadStart:Lio/bidmachine/TrackEventType;

    .line 27
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x1a

    const/16 v2, 0x387

    const-string v3, "AdUnitLoadFinish"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitLoadFinish:Lio/bidmachine/TrackEventType;

    .line 28
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x1b

    const/16 v2, 0x389

    const-string v3, "AdUnitExpired"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitExpired:Lio/bidmachine/TrackEventType;

    .line 29
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x1c

    const/16 v2, 0x38a

    const-string v3, "AdUnitCheapestDequeued"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitCheapestDequeued:Lio/bidmachine/TrackEventType;

    .line 30
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x1d

    const/16 v2, 0x38b

    const-string v3, "AdUnitShown"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitShown:Lio/bidmachine/TrackEventType;

    .line 31
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x1e

    const/16 v2, 0x38c

    const-string v3, "AdUnitWin"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitWin:Lio/bidmachine/TrackEventType;

    .line 32
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x1f

    const/16 v2, 0x38d

    const-string v3, "AdUnitLoss"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitLoss:Lio/bidmachine/TrackEventType;

    .line 33
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x20

    const/16 v2, 0x38e

    const-string v3, "AdUnitPaidEvent"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AdUnitPaidEvent:Lio/bidmachine/TrackEventType;

    .line 34
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x21

    const/16 v2, 0x202

    const-string v3, "ImpressionOpportunity"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->ImpressionOpportunity:Lio/bidmachine/TrackEventType;

    .line 35
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x22

    const/16 v2, 0x514

    const-string v3, "CrashReport"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->CrashReport:Lio/bidmachine/TrackEventType;

    .line 36
    new-instance v0, Lio/bidmachine/TrackEventType;

    const/16 v1, 0x23

    const/16 v2, 0x515

    const-string v3, "AnrReport"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AnrReport:Lio/bidmachine/TrackEventType;

    .line 37
    invoke-static {}, Lio/bidmachine/TrackEventType;->$values()[Lio/bidmachine/TrackEventType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/TrackEventType;->$VALUES:[Lio/bidmachine/TrackEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/bidmachine/TrackEventType;->actionValue:I

    return-void
.end method

.method public static fromNumber(I)Lio/bidmachine/TrackEventType;
    .registers 6

    .line 1
    invoke-static {}, Lio/bidmachine/TrackEventType;->values()[Lio/bidmachine/TrackEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lio/bidmachine/TrackEventType;->actionValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/TrackEventType;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/TrackEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/TrackEventType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/TrackEventType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/TrackEventType;->$VALUES:[Lio/bidmachine/TrackEventType;

    invoke-virtual {v0}, [Lio/bidmachine/TrackEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/TrackEventType;

    return-object v0
.end method


# virtual methods
.method public getActionValue()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/TrackEventType;->actionValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/TrackEventType;->actionValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
