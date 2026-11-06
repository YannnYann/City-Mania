###### Class io.bidmachine.iab.CacheControl (io.bidmachine.iab.CacheControl)
.class public final enum Lio/bidmachine/iab/CacheControl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/CacheControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/iab/CacheControl;

.field public static final enum FullLoad:Lio/bidmachine/iab/CacheControl;

.field public static final enum PartialLoad:Lio/bidmachine/iab/CacheControl;

.field public static final enum Stream:Lio/bidmachine/iab/CacheControl;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/iab/CacheControl;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    sget-object v1, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    sget-object v2, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/CacheControl;

    const-string v1, "FullLoad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/CacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    new-instance v0, Lio/bidmachine/iab/CacheControl;

    const-string v1, "Stream"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/CacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    new-instance v0, Lio/bidmachine/iab/CacheControl;

    const-string v1, "PartialLoad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/CacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    .line 2
    invoke-static {}, Lio/bidmachine/iab/CacheControl;->$values()[Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/CacheControl;->$VALUES:[Lio/bidmachine/iab/CacheControl;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/CacheControl;
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
    const-class v0, Lio/bidmachine/iab/CacheControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/CacheControl;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/CacheControl;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/CacheControl;->$VALUES:[Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v0}, [Lio/bidmachine/iab/CacheControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/CacheControl;

    return-object v0
.end method
