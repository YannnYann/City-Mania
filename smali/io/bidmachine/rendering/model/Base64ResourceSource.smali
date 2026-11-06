###### Class io.bidmachine.rendering.model.Base64ResourceSource (io.bidmachine.rendering.model.Base64ResourceSource)
.class public final Lio/bidmachine/rendering/model/Base64ResourceSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/ResourceSource;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "base64"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/Base64ResourceSource;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBase64()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Base64ResourceSource;->a:Ljava/lang/String;

    return-object v0
.end method
