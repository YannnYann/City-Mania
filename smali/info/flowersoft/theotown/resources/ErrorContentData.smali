###### Class info.flowersoft.theotown.resources.ErrorContentData (info.flowersoft.theotown.resources.ErrorContentData)
.class public final Linfo/flowersoft/theotown/resources/ErrorContentData;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# instance fields
.field public final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ErrorContentData;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Exception;
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ErrorContentData;->exception:Ljava/lang/Exception;

    return-object v0
.end method
