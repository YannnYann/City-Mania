###### Class io.bidmachine.util.SystemComponent (io.bidmachine.util.SystemComponent)
.class public final enum Lio/bidmachine/util/SystemComponent;
.super Ljava/lang/Enum;
.source "SystemComponent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/SystemComponent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/SystemComponent;

.field public static final enum Browser:Lio/bidmachine/util/SystemComponent;

.field public static final enum EmbeddedBrowser:Lio/bidmachine/util/SystemComponent;

.field public static final enum InlineInstall:Lio/bidmachine/util/SystemComponent;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/SystemComponent;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/util/SystemComponent;->Browser:Lio/bidmachine/util/SystemComponent;

    sget-object v1, Lio/bidmachine/util/SystemComponent;->EmbeddedBrowser:Lio/bidmachine/util/SystemComponent;

    sget-object v2, Lio/bidmachine/util/SystemComponent;->InlineInstall:Lio/bidmachine/util/SystemComponent;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/util/SystemComponent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 5
    new-instance v0, Lio/bidmachine/util/SystemComponent;

    const-string v1, "Browser"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/SystemComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/SystemComponent;->Browser:Lio/bidmachine/util/SystemComponent;

    .line 6
    new-instance v0, Lio/bidmachine/util/SystemComponent;

    const-string v1, "EmbeddedBrowser"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/SystemComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/SystemComponent;->EmbeddedBrowser:Lio/bidmachine/util/SystemComponent;

    .line 7
    new-instance v0, Lio/bidmachine/util/SystemComponent;

    const-string v1, "InlineInstall"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/SystemComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/SystemComponent;->InlineInstall:Lio/bidmachine/util/SystemComponent;

    invoke-static {}, Lio/bidmachine/util/SystemComponent;->$values()[Lio/bidmachine/util/SystemComponent;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/SystemComponent;->$VALUES:[Lio/bidmachine/util/SystemComponent;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/SystemComponent;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/SystemComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/SystemComponent;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/SystemComponent;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/SystemComponent;->$VALUES:[Lio/bidmachine/util/SystemComponent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/SystemComponent;

    return-object v0
.end method
