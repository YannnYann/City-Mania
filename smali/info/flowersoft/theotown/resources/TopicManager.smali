###### Class info.flowersoft.theotown.resources.TopicManager (info.flowersoft.theotown.resources.TopicManager)
.class public Linfo/flowersoft/theotown/resources/TopicManager;
.super Ljava/lang/Object;
.source "TopicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/TopicManager$Topic;
    }
.end annotation


# static fields
.field public static final COLOR_DEFAULT:Lio/blueflower/stapel2d/drawing/Color;

.field public static instance:Linfo/flowersoft/theotown/resources/TopicManager;


# instance fields
.field public topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

.field public final topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/TopicManager$Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    sput-object v0, Linfo/flowersoft/theotown/resources/TopicManager;->COLOR_DEFAULT:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topics:Ljava/util/List;

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 49
    sput-object v0, Linfo/flowersoft/theotown/resources/TopicManager;->instance:Linfo/flowersoft/theotown/resources/TopicManager;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/TopicManager;
    .registers 1

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/resources/TopicManager;->instance:Linfo/flowersoft/theotown/resources/TopicManager;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/resources/TopicManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/TopicManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/TopicManager;->instance:Linfo/flowersoft/theotown/resources/TopicManager;

    .line 45
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/TopicManager;->instance:Linfo/flowersoft/theotown/resources/TopicManager;

    return-object v0
.end method


# virtual methods
.method public addTopic(I)Linfo/flowersoft/theotown/resources/TopicManager$Topic;
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(ILinfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    move-result-object p1

    return-object p1
.end method

.method public final addTopic(ILinfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/resources/TopicManager$Topic;
    .registers 5

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;-><init>(Linfo/flowersoft/theotown/resources/TopicManager$1;)V

    .line 62
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$102(Linfo/flowersoft/theotown/resources/TopicManager$Topic;I)I

    .line 63
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$202(Linfo/flowersoft/theotown/resources/TopicManager$Topic;Linfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/draft/TopicDraft;

    .line 64
    sget-object p1, Linfo/flowersoft/theotown/resources/TopicManager;->COLOR_DEFAULT:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$302(Linfo/flowersoft/theotown/resources/TopicManager$Topic;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 65
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$402(Linfo/flowersoft/theotown/resources/TopicManager$Topic;Ljava/util/List;)Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 66
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$502(Linfo/flowersoft/theotown/resources/TopicManager$Topic;F)F

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topics:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTopic(Linfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/resources/TopicManager$Topic;
    .registers 3

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(ILinfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    move-result-object p1

    return-object p1
.end method

.method public final ensureTopic()V
    .registers 3

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    if-nez v0, :cond_14

    .line 102
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->pickRandomTopic()V

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not pick topic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    return-void
.end method

.method public getTopicColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 128
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->ensureTopic()V

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    return-object v0
.end method

.method public getTopicDraft()Linfo/flowersoft/theotown/draft/TopicDraft;
    .registers 2

    .line 123
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->ensureTopic()V

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$200(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)Linfo/flowersoft/theotown/draft/TopicDraft;

    move-result-object v0

    return-object v0
.end method

.method public getTopicId()I
    .registers 2

    .line 113
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->ensureTopic()V

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$100(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)I

    move-result v0

    return v0
.end method

.method public isHelpful()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->ensureTopic()V

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->isHelpful()Z

    move-result v0

    return v0
.end method

.method public pickHelpfulTopic()V
    .registers 5

    .line 87
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    .line 90
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$600(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->isHelpful()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 91
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->getWeight()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_d

    .line 95
    :cond_2d
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 96
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    :cond_3b
    return-void
.end method

.method public pickRandomTopic()V
    .registers 5

    .line 73
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 75
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    .line 76
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->access$600(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 77
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->getWeight()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_d

    .line 81
    :cond_27
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 82
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager;->topic:Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    :cond_35
    return-void
.end method

###### Class info.flowersoft.theotown.resources.TopicManager.AnonymousClass1 (info.flowersoft.theotown.resources.TopicManager$1)
.class public synthetic Linfo/flowersoft/theotown/resources/TopicManager$1;
.super Ljava/lang/Object;
.source "TopicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/TopicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.resources.TopicManager.Topic (info.flowersoft.theotown.resources.TopicManager$Topic)
.class public Linfo/flowersoft/theotown/resources/TopicManager$Topic;
.super Ljava/lang/Object;
.source "TopicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/TopicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Topic"
.end annotation


# instance fields
.field public availableDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public draft:Linfo/flowersoft/theotown/draft/TopicDraft;

.field public id:I

.field public weight:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/TopicManager$1;)V
    .registers 2

    .line 132
    invoke-direct {p0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)I
    .registers 1

    .line 132
    iget p0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->id:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/resources/TopicManager$Topic;I)I
    .registers 2

    .line 132
    iput p1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->id:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)Linfo/flowersoft/theotown/draft/TopicDraft;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->draft:Linfo/flowersoft/theotown/draft/TopicDraft;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/resources/TopicManager$Topic;Linfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/draft/TopicDraft;
    .registers 2

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->draft:Linfo/flowersoft/theotown/draft/TopicDraft;

    return-object p1
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/resources/TopicManager$Topic;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/resources/TopicManager$Topic;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->availableDates:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/resources/TopicManager$Topic;F)F
    .registers 2

    .line 132
    iput p1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->weight:F

    return p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/resources/TopicManager$Topic;)Z
    .registers 1

    .line 132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->isAvailable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addDay(II)V
    .registers 4

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->addDays(III)V

    return-void
.end method

.method public addDays(III)V
    .registers 6

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->availableDates:Ljava/util/List;

    if-nez v0, :cond_b

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->availableDates:Ljava/util/List;

    .line 209
    :cond_b
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7b2

    invoke-direct {v0, v1, p2, p1}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 p1, 0x0

    :goto_13
    if-ge p1, p3, :cond_27

    .line 211
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;

    const/4 v1, 0x5

    .line 212
    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 213
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->availableDates:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->draft:Linfo/flowersoft/theotown/draft/TopicDraft;

    if-eqz v0, :cond_9

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getWeight()F
    .registers 3

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->draft:Linfo/flowersoft/theotown/draft/TopicDraft;

    if-eqz v0, :cond_10

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget v0, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->weight:F

    iget v1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->weight:F

    mul-float/2addr v0, v1

    return v0

    :cond_10
    iget v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->weight:F

    return v0
.end method

.method public final isAvailable()Z
    .registers 7

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->availableDates:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 166
    :cond_6
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 167
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->availableDates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    const/4 v4, 0x2

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_11

    const/4 v4, 0x5

    .line 169
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v5, v3, :cond_11

    return v1

    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method public isHelpful()Z
    .registers 2

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->draft:Linfo/flowersoft/theotown/draft/TopicDraft;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/TopicDraft;->helpful:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setWeight(F)V
    .registers 2

    .line 197
    iput p1, p0, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->weight:F

    return-void
.end method
