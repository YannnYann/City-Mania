###### Class io.bidmachine.nativead.view.NativeState (io.bidmachine.nativead.view.NativeState)
.class public final enum Lio/bidmachine/nativead/view/NativeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/nativead/view/NativeState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Image:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Loading:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Paused:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Playing:Lio/bidmachine/nativead/view/NativeState;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/nativead/view/NativeState;
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    sget-object v2, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    sget-object v3, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/nativead/view/NativeState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    const-string v1, "Playing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    const-string v1, "Loading"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    const-string v1, "Paused"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    .line 2
    invoke-static {}, Lio/bidmachine/nativead/view/NativeState;->$values()[Lio/bidmachine/nativead/view/NativeState;

    move-result-object v0

    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->$VALUES:[Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/nativead/view/NativeState;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/nativead/view/NativeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/nativead/view/NativeState;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/nativead/view/NativeState;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->$VALUES:[Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v0}, [Lio/bidmachine/nativead/view/NativeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/nativead/view/NativeState;

    return-object v0
.end method
