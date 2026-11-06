###### Class com.iab.omid.library.appodeal.adsession.OutputDeviceStatus (com.iab.omid.library.appodeal.adsession.OutputDeviceStatus)
.class public final enum Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

.field public static final enum NOT_DETECTED:Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

.field public static final enum UNKNOWN:Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;


# direct methods
.method private static synthetic $values()[Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;
    .registers 2

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->NOT_DETECTED:Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    sget-object v1, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->UNKNOWN:Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    filled-new-array {v0, v1}, [Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    const-string v1, "NOT_DETECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->NOT_DETECTED:Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->UNKNOWN:Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    invoke-static {}, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->$values()[Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->$VALUES:[Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;
    .registers 2

    .line 0
    const-class v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->$VALUES:[Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    invoke-virtual {v0}, [Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/appodeal/adsession/OutputDeviceStatus;

    return-object v0
.end method
