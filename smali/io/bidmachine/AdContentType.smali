###### Class io.bidmachine.AdContentType (io.bidmachine.AdContentType)
.class public final enum Lio/bidmachine/AdContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdContentType;

.field public static final enum All:Lio/bidmachine/AdContentType;

.field public static final enum Static:Lio/bidmachine/AdContentType;

.field public static final enum Video:Lio/bidmachine/AdContentType;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/AdContentType;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    sget-object v1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    sget-object v2, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/AdContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/AdContentType;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/AdContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    new-instance v0, Lio/bidmachine/AdContentType;

    const-string v1, "Video"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/AdContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    new-instance v0, Lio/bidmachine/AdContentType;

    const-string v1, "Static"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/AdContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    .line 2
    invoke-static {}, Lio/bidmachine/AdContentType;->$values()[Lio/bidmachine/AdContentType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdContentType;->$VALUES:[Lio/bidmachine/AdContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdContentType;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/AdContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdContentType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdContentType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdContentType;->$VALUES:[Lio/bidmachine/AdContentType;

    invoke-virtual {v0}, [Lio/bidmachine/AdContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdContentType;

    return-object v0
.end method
