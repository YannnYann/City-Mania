###### Class io.bidmachine.iab.mraid.MraidViewState (io.bidmachine.iab.mraid.MraidViewState)
.class public final enum Lio/bidmachine/iab/mraid/MraidViewState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/mraid/MraidViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

.field public static final enum EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

.field public static final enum HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

.field public static final enum LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

.field public static final enum RESIZED:Lio/bidmachine/iab/mraid/MraidViewState;

.field public static final synthetic a:[Lio/bidmachine/iab/mraid/MraidViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidViewState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 4
    new-instance v0, Lio/bidmachine/iab/mraid/MraidViewState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 7
    new-instance v0, Lio/bidmachine/iab/mraid/MraidViewState;

    const-string v1, "RESIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->RESIZED:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 10
    new-instance v0, Lio/bidmachine/iab/mraid/MraidViewState;

    const-string v1, "EXPANDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 14
    new-instance v0, Lio/bidmachine/iab/mraid/MraidViewState;

    const-string v1, "HIDDEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 15
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidViewState;->a()[Lio/bidmachine/iab/mraid/MraidViewState;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->a:[Lio/bidmachine/iab/mraid/MraidViewState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lio/bidmachine/iab/mraid/MraidViewState;
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v2, Lio/bidmachine/iab/mraid/MraidViewState;->RESIZED:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v3, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v4, Lio/bidmachine/iab/mraid/MraidViewState;->HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/iab/mraid/MraidViewState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidViewState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/mraid/MraidViewState;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/mraid/MraidViewState;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->a:[Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {v0}, [Lio/bidmachine/iab/mraid/MraidViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/mraid/MraidViewState;

    return-object v0
.end method


# virtual methods
.method public toJsString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
