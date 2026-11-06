###### Class com.iab.omid.library.appodeal.processor.b (com.iab.omid.library.appodeal.processor.b)
.class public Lcom/iab/omid/library/appodeal/processor/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/appodeal/processor/d;

.field private final b:Lcom/iab/omid/library/appodeal/processor/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/appodeal/processor/d;

    invoke-direct {v0}, Lcom/iab/omid/library/appodeal/processor/d;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/processor/b;->a:Lcom/iab/omid/library/appodeal/processor/d;

    new-instance v1, Lcom/iab/omid/library/appodeal/processor/c;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/appodeal/processor/c;-><init>(Lcom/iab/omid/library/appodeal/processor/a;)V

    iput-object v1, p0, Lcom/iab/omid/library/appodeal/processor/b;->b:Lcom/iab/omid/library/appodeal/processor/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/iab/omid/library/appodeal/processor/a;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/processor/b;->b:Lcom/iab/omid/library/appodeal/processor/c;

    return-object v0
.end method

.method public b()Lcom/iab/omid/library/appodeal/processor/a;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/processor/b;->a:Lcom/iab/omid/library/appodeal/processor/d;

    return-object v0
.end method
