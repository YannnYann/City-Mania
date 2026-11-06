###### Class info.flowersoft.theotown.util.Saveable (info.flowersoft.theotown.util.Saveable)
.class public interface abstract Linfo/flowersoft/theotown/util/Saveable;
.super Ljava/lang/Object;
.source "Saveable.java"


# virtual methods
.method public abstract load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
