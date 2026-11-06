###### Class io.bidmachine.Publisher (io.bidmachine.Publisher)
.class public Lio/bidmachine/Publisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/Publisher$Builder;
    }
.end annotation


# instance fields
.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final domain:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/Publisher;->id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lio/bidmachine/Publisher;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lio/bidmachine/Publisher;->domain:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lio/bidmachine/Publisher;->categories:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/bidmachine/Publisher$a;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/Publisher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/Publisher;->id:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 4
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 6
    :cond_b
    iget-object v1, p0, Lio/bidmachine/Publisher;->name:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 8
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 10
    :cond_12
    iget-object v1, p0, Lio/bidmachine/Publisher;->domain:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 12
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setDomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 14
    :cond_19
    iget-object v1, p0, Lio/bidmachine/Publisher;->categories:Ljava/util/List;

    if-eqz v1, :cond_20

    .line 16
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 18
    :cond_20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPub(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method

###### Class io.bidmachine.Publisher.Builder (io.bidmachine.Publisher$Builder)
.class public final Lio/bidmachine/Publisher$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCategories(Ljava/util/List;)Lio/bidmachine/Publisher$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/Publisher$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/Utils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1b

    .line 4
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/Publisher$Builder;->addCategory(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;

    goto :goto_b

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public addCategory(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    if-nez v0, :cond_12

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    .line 7
    :cond_12
    iget-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/bidmachine/Publisher;
    .registers 7

    .line 1
    new-instance v0, Lio/bidmachine/Publisher;

    iget-object v1, p0, Lio/bidmachine/Publisher$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/Publisher$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/Publisher$Builder;->domain:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/Publisher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/bidmachine/Publisher$a;)V

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

###### Class io.bidmachine.Publisher.a (io.bidmachine.Publisher$a)
.class public abstract synthetic Lio/bidmachine/Publisher$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation
