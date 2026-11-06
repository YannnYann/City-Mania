###### Class io.bidmachine.rendering.model.Placeholder (io.bidmachine.rendering.model.Placeholder)
.class public final Lio/bidmachine/rendering/model/Placeholder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/PlaceholderSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/PlaceholderSource;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/Placeholder;->a:Lio/bidmachine/rendering/model/PlaceholderSource;

    return-void
.end method


# virtual methods
.method public final getSource()Lio/bidmachine/rendering/model/PlaceholderSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Placeholder;->a:Lio/bidmachine/rendering/model/PlaceholderSource;

    return-object v0
.end method
