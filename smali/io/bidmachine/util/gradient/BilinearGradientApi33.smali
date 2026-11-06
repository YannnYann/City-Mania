###### Class io.bidmachine.util.gradient.BilinearGradientApi33 (io.bidmachine.util.gradient.BilinearGradientApi33)
.class public final Lio/bidmachine/util/gradient/BilinearGradientApi33;
.super Landroid/graphics/RuntimeShader;
.source "BilinearGradientApi33.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/gradient/BilinearGradientApi33;->Companion:Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;[I)V
    .registers 5

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v0, "\n            layout(color) uniform vec4 c00; // top-left\n            layout(color) uniform vec4 c10; // top-right\n            layout(color) uniform vec4 c01; // bottom-left\n            layout(color) uniform vec4 c11; // bottom-right\n            uniform float w;\n            uniform float h;\n            \n            half4 main(float2 p) {\n                float u = clamp(p.x / max(w, 1.0), 0.0, 1.0);\n                float v = clamp(p.y / max(h, 1.0), 0.0, 1.0);\n                vec4 col = (1.0 - u) * (1.0 - v) * c00\n                         + u * (1.0 - v) * c10\n                         + (1.0 - u) * v * c01\n                         + u * v * c11;\n                return half4(col);\n            }\n            "

    invoke-direct {p0, v0}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const-string v1, "w"

    invoke-static {p0, v1, v0}, Lio/bidmachine/util/gradient/BilinearGradientApi33$$ExternalSyntheticApiModelOutline0;->m(Lio/bidmachine/util/gradient/BilinearGradientApi33;Ljava/lang/String;F)V

    .line 17
    const-string v0, "h"

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/gradient/BilinearGradientApi33$$ExternalSyntheticApiModelOutline0;->m(Lio/bidmachine/util/gradient/BilinearGradientApi33;Ljava/lang/String;F)V

    const/4 p1, 0x0

    .line 18
    aget p1, p2, p1

    const-string v0, "c00"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/gradient/BilinearGradientApi33$$ExternalSyntheticApiModelOutline1;->m(Lio/bidmachine/util/gradient/BilinearGradientApi33;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 19
    aget p1, p2, p1

    const-string v0, "c10"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/gradient/BilinearGradientApi33$$ExternalSyntheticApiModelOutline1;->m(Lio/bidmachine/util/gradient/BilinearGradientApi33;Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 20
    aget p1, p2, p1

    const-string v0, "c01"

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/gradient/BilinearGradientApi33$$ExternalSyntheticApiModelOutline1;->m(Lio/bidmachine/util/gradient/BilinearGradientApi33;Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 21
    aget p1, p2, p1

    const-string p2, "c11"

    invoke-static {p0, p2, p1}, Lio/bidmachine/util/gradient/BilinearGradientApi33$$ExternalSyntheticApiModelOutline1;->m(Lio/bidmachine/util/gradient/BilinearGradientApi33;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.bidmachine.util.gradient.BilinearGradientApi33.Companion (io.bidmachine.util.gradient.BilinearGradientApi33$Companion)
.class public final Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;
.super Ljava/lang/Object;
.source "BilinearGradientApi33.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/gradient/BilinearGradientApi33;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/gradient/BilinearGradientApi33$Companion;-><init>()V

    return-void
.end method
