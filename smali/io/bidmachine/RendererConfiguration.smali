###### Class io.bidmachine.RendererConfiguration (io.bidmachine.RendererConfiguration)
.class public final Lio/bidmachine/RendererConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/RendererConfiguration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/RendererConfiguration$Companion;

.field private static final GOOGLE_WATERMARK:Ljava/lang/String; = "google_watermark"


# instance fields
.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/RendererConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/RendererConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/RendererConfiguration;->Companion:Lio/bidmachine/RendererConfiguration$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/RendererConfiguration;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/RendererConfiguration;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getWatermark()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/RendererConfiguration;->extras:Ljava/util/Map;

    const-string v1, "google_watermark"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWatermarkDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/WatermarkUtils;->INSTANCE:Lio/bidmachine/rendering/utils/WatermarkUtils;

    invoke-virtual {p0}, Lio/bidmachine/RendererConfiguration;->getWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/rendering/utils/WatermarkUtils;->convertToRepeatedDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.RendererConfiguration.Companion (io.bidmachine.RendererConfiguration$Companion)
.class public final Lio/bidmachine/RendererConfiguration$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/RendererConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/RendererConfiguration$Companion;-><init>()V

    return-void
.end method
