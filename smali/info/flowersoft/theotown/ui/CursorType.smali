###### Class info.flowersoft.theotown.ui.CursorType (info.flowersoft.theotown.ui.CursorType)
.class public final enum Linfo/flowersoft/theotown/ui/CursorType;
.super Ljava/lang/Enum;
.source "CursorManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/ui/CursorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Build:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Crosshair:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Delete:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Hand:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Move:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum NoMoney:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Normal:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

.field public static final enum Wait:Linfo/flowersoft/theotown/ui/CursorType;


# direct methods
.method public static final synthetic $values()[Linfo/flowersoft/theotown/ui/CursorType;
    .registers 9

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Delete:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v2, Linfo/flowersoft/theotown/ui/CursorType;->Build:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v3, Linfo/flowersoft/theotown/ui/CursorType;->Crosshair:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorType;->Hand:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v5, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v6, Linfo/flowersoft/theotown/ui/CursorType;->NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v7, Linfo/flowersoft/theotown/ui/CursorType;->Wait:Linfo/flowersoft/theotown/ui/CursorType;

    sget-object v8, Linfo/flowersoft/theotown/ui/CursorType;->NoMoney:Linfo/flowersoft/theotown/ui/CursorType;

    filled-new-array/range {v0 .. v8}, [Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    .line 22
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Delete"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Delete:Linfo/flowersoft/theotown/ui/CursorType;

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Build"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Build:Linfo/flowersoft/theotown/ui/CursorType;

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Crosshair"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Crosshair:Linfo/flowersoft/theotown/ui/CursorType;

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Hand"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Hand:Linfo/flowersoft/theotown/ui/CursorType;

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Move"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    .line 27
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "NotAllowed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "Wait"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Wait:Linfo/flowersoft/theotown/ui/CursorType;

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorType;

    const-string v1, "NoMoney"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NoMoney:Linfo/flowersoft/theotown/ui/CursorType;

    invoke-static {}, Linfo/flowersoft/theotown/ui/CursorType;->$values()[Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->$VALUES:[Linfo/flowersoft/theotown/ui/CursorType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/ui/CursorType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 0
    const-class v0, Linfo/flowersoft/theotown/ui/CursorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/ui/CursorType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/ui/CursorType;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->$VALUES:[Linfo/flowersoft/theotown/ui/CursorType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method
