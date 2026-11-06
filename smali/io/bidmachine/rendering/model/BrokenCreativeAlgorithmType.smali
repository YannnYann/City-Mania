###### Class io.bidmachine.rendering.model.BrokenCreativeAlgorithmType (io.bidmachine.rendering.model.BrokenCreativeAlgorithmType)
.class public final enum Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum BrightnessVariance:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

.field public static final enum ColorHistogram:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

.field public static final Companion:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;

.field public static final enum EdgeDetection:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    const/4 v1, 0x0

    const-string v2, "color_histogram"

    const-string v3, "ColorHistogram"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->ColorHistogram:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    const/4 v1, 0x1

    const-string v2, "brightness_variance"

    const-string v3, "BrightnessVariance"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->BrightnessVariance:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    const/4 v1, 0x2

    const-string v2, "edge_detection"

    const-string v3, "EdgeDetection"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->EdgeDetection:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    invoke-static {}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->a()[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->b:[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    new-instance v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->Companion:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->ColorHistogram:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    sget-object v1, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->BrightnessVariance:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    sget-object v2, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->EdgeDetection:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->b:[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.BrokenCreativeAlgorithmType.Companion (io.bidmachine.rendering.model.BrokenCreativeAlgorithmType$Companion)
.class public final Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->values()[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/KeyHolder;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    return-object p1
.end method
