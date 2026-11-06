###### Class io.bidmachine.util.network.Method (io.bidmachine.util.network.Method)
.class public final enum Lio/bidmachine/util/network/Method;
.super Ljava/lang/Enum;
.source "Method.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/network/Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/network/Method;

.field public static final enum Get:Lio/bidmachine/util/network/Method;

.field public static final enum Head:Lio/bidmachine/util/network/Method;

.field public static final enum Post:Lio/bidmachine/util/network/Method;


# instance fields
.field public final networkName:Ljava/lang/String;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/network/Method;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/util/network/Method;->Get:Lio/bidmachine/util/network/Method;

    sget-object v1, Lio/bidmachine/util/network/Method;->Post:Lio/bidmachine/util/network/Method;

    sget-object v2, Lio/bidmachine/util/network/Method;->Head:Lio/bidmachine/util/network/Method;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/util/network/Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 5
    new-instance v0, Lio/bidmachine/util/network/Method;

    const/4 v1, 0x0

    const-string v2, "GET"

    const-string v3, "Get"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/util/network/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/util/network/Method;->Get:Lio/bidmachine/util/network/Method;

    .line 6
    new-instance v0, Lio/bidmachine/util/network/Method;

    const/4 v1, 0x1

    const-string v2, "POST"

    const-string v3, "Post"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/util/network/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/util/network/Method;->Post:Lio/bidmachine/util/network/Method;

    .line 7
    new-instance v0, Lio/bidmachine/util/network/Method;

    const/4 v1, 0x2

    const-string v2, "HEAD"

    const-string v3, "Head"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/util/network/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/util/network/Method;->Head:Lio/bidmachine/util/network/Method;

    invoke-static {}, Lio/bidmachine/util/network/Method;->$values()[Lio/bidmachine/util/network/Method;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/network/Method;->$VALUES:[Lio/bidmachine/util/network/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/util/network/Method;->networkName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/network/Method;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/network/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/network/Method;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/network/Method;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/network/Method;->$VALUES:[Lio/bidmachine/util/network/Method;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/network/Method;

    return-object v0
.end method


# virtual methods
.method public final getNetworkName()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/util/network/Method;->networkName:Ljava/lang/String;

    return-object v0
.end method
