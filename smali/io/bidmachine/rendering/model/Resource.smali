###### Class io.bidmachine.rendering.model.Resource (io.bidmachine.rendering.model.Resource)
.class public final Lio/bidmachine/rendering/model/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/ResourceSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/ResourceSource;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/Resource;->a:Lio/bidmachine/rendering/model/ResourceSource;

    return-void
.end method


# virtual methods
.method public final getSource()Lio/bidmachine/rendering/model/ResourceSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Resource;->a:Lio/bidmachine/rendering/model/ResourceSource;

    return-object v0
.end method
