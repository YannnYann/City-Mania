###### Class io.bidmachine.rendering.model.StopDetectorAfter (io.bidmachine.rendering.model.StopDetectorAfter)
.class public final enum Lio/bidmachine/rendering/model/StopDetectorAfter;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/StopDetectorAfter;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum AnyCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

.field public static final enum BrokenCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

.field public static final Companion:Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;

.field public static final enum Never:Lio/bidmachine/rendering/model/StopDetectorAfter;

.field public static final enum ValidCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/StopDetectorAfter;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/StopDetectorAfter;

    const/4 v1, 0x0

    const-string v2, "valid_creative"

    const-string v3, "ValidCreative"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/StopDetectorAfter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->ValidCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/StopDetectorAfter;

    const/4 v1, 0x1

    const-string v2, "broken_creative"

    const-string v3, "BrokenCreative"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/StopDetectorAfter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->BrokenCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/StopDetectorAfter;

    const/4 v1, 0x2

    const-string v2, "any_creative"

    const-string v3, "AnyCreative"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/StopDetectorAfter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->AnyCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/StopDetectorAfter;

    const/4 v1, 0x3

    const-string v2, "never"

    const-string v3, "Never"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/StopDetectorAfter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->Never:Lio/bidmachine/rendering/model/StopDetectorAfter;

    invoke-static {}, Lio/bidmachine/rendering/model/StopDetectorAfter;->a()[Lio/bidmachine/rendering/model/StopDetectorAfter;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->b:[Lio/bidmachine/rendering/model/StopDetectorAfter;

    new-instance v0, Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->Companion:Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/rendering/model/StopDetectorAfter;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/StopDetectorAfter;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->ValidCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    sget-object v1, Lio/bidmachine/rendering/model/StopDetectorAfter;->BrokenCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    sget-object v2, Lio/bidmachine/rendering/model/StopDetectorAfter;->AnyCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    sget-object v3, Lio/bidmachine/rendering/model/StopDetectorAfter;->Never:Lio/bidmachine/rendering/model/StopDetectorAfter;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/StopDetectorAfter;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/StopDetectorAfter;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/StopDetectorAfter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/StopDetectorAfter;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/StopDetectorAfter;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->b:[Lio/bidmachine/rendering/model/StopDetectorAfter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/StopDetectorAfter;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/StopDetectorAfter;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.StopDetectorAfter.Companion (io.bidmachine.rendering.model.StopDetectorAfter$Companion)
.class public final Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/StopDetectorAfter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/StopDetectorAfter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/StopDetectorAfter;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/StopDetectorAfter;->values()[Lio/bidmachine/rendering/model/StopDetectorAfter;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/KeyHolder;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/StopDetectorAfter;

    return-object p1
.end method
