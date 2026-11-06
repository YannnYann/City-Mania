###### Class io.bidmachine.d (io.bidmachine.d)
.class public final enum Lio/bidmachine/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lio/bidmachine/d;

.field public static final enum b:Lio/bidmachine/d;

.field public static final synthetic c:[Lio/bidmachine/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/d;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    new-instance v0, Lio/bidmachine/d;

    const-string v1, "Busy"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    .line 2
    invoke-static {}, Lio/bidmachine/d;->a()[Lio/bidmachine/d;

    move-result-object v0

    sput-object v0, Lio/bidmachine/d;->c:[Lio/bidmachine/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lio/bidmachine/d;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    sget-object v1, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    filled-new-array {v0, v1}, [Lio/bidmachine/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/d;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/d;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/d;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/d;->c:[Lio/bidmachine/d;

    invoke-virtual {v0}, [Lio/bidmachine/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/d;

    return-object v0
.end method
