###### Class io.bidmachine.rendering.model.SideBindParams (io.bidmachine.rendering.model.SideBindParams)
.class public final Lio/bidmachine/rendering/model/SideBindParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/SideType;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/SideType;Ljava/lang/String;)V
    .registers 4

    const-string v0, "targetSideType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/SideBindParams;->a:Lio/bidmachine/rendering/model/SideType;

    .line 6
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "ENGLISH"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/model/SideBindParams;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-class v2, Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 5
    :cond_16
    const-string v1, "null cannot be cast to non-null type io.bidmachine.rendering.model.SideBindParams"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/bidmachine/rendering/model/SideBindParams;

    .line 7
    iget-object v1, p0, Lio/bidmachine/rendering/model/SideBindParams;->a:Lio/bidmachine/rendering/model/SideType;

    iget-object v3, p1, Lio/bidmachine/rendering/model/SideBindParams;->a:Lio/bidmachine/rendering/model/SideType;

    if-eq v1, v3, :cond_24

    return v2

    .line 10
    :cond_24
    iget-object v1, p0, Lio/bidmachine/rendering/model/SideBindParams;->b:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/rendering/model/SideBindParams;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    return v2

    :cond_2f
    return v0
.end method

.method public final getTargetName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/SideBindParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetSideType()Lio/bidmachine/rendering/model/SideType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/SideBindParams;->a:Lio/bidmachine/rendering/model/SideType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/SideBindParams;->a:Lio/bidmachine/rendering/model/SideType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/model/SideBindParams;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
