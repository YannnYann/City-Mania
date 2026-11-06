###### Class io.bidmachine.util.Tag (io.bidmachine.util.Tag)
.class public final Lio/bidmachine/util/Tag;
.super Ljava/lang/Object;
.source "Tag.kt"


# instance fields
.field public final name:Ljava/lang/String;

.field public final tag$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/Tag;->name:Ljava/lang/String;

    .line 5
    new-instance p1, Lio/bidmachine/util/Tag$tag$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/Tag$tag$2;-><init>(Lio/bidmachine/util/Tag;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/Tag;->tag$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getName$p(Lio/bidmachine/util/Tag;)Ljava/lang/String;
    .registers 1

    .line 3
    iget-object p0, p0, Lio/bidmachine/util/Tag;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lio/bidmachine/util/Tag;->tag$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/util/Tag;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.Tag$tag$2 (io.bidmachine.util.Tag$tag$2)
.class public final Lio/bidmachine/util/Tag$tag$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Tag.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/Tag;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/Tag;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/Tag$tag$2;->this$0:Lio/bidmachine/util/Tag;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/util/Tag$tag$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/util/Tag$tag$2;->this$0:Lio/bidmachine/util/Tag;

    invoke-static {v1}, Lio/bidmachine/util/Tag;->access$getName$p(Lio/bidmachine/util/Tag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/Tag$tag$2;->this$0:Lio/bidmachine/util/Tag;

    invoke-static {v1}, Lio/bidmachine/util/UtilsKt;->createHexHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
