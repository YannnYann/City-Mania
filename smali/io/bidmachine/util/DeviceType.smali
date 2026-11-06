###### Class io.bidmachine.util.DeviceType (io.bidmachine.util.DeviceType)
.class public final enum Lio/bidmachine/util/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/DeviceType;

.field public static final enum CTV:Lio/bidmachine/util/DeviceType;

.field public static final enum PHONE_DEVICE:Lio/bidmachine/util/DeviceType;

.field public static final enum TABLET:Lio/bidmachine/util/DeviceType;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/DeviceType;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/util/DeviceType;->CTV:Lio/bidmachine/util/DeviceType;

    sget-object v1, Lio/bidmachine/util/DeviceType;->TABLET:Lio/bidmachine/util/DeviceType;

    sget-object v2, Lio/bidmachine/util/DeviceType;->PHONE_DEVICE:Lio/bidmachine/util/DeviceType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/util/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lio/bidmachine/util/DeviceType;

    const-string v1, "CTV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/DeviceType;->CTV:Lio/bidmachine/util/DeviceType;

    .line 5
    new-instance v0, Lio/bidmachine/util/DeviceType;

    const-string v1, "TABLET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/DeviceType;->TABLET:Lio/bidmachine/util/DeviceType;

    .line 6
    new-instance v0, Lio/bidmachine/util/DeviceType;

    const-string v1, "PHONE_DEVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/DeviceType;->PHONE_DEVICE:Lio/bidmachine/util/DeviceType;

    invoke-static {}, Lio/bidmachine/util/DeviceType;->$values()[Lio/bidmachine/util/DeviceType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/DeviceType;->$VALUES:[Lio/bidmachine/util/DeviceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/DeviceType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/DeviceType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/DeviceType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/DeviceType;->$VALUES:[Lio/bidmachine/util/DeviceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/DeviceType;

    return-object v0
.end method
