###### Class io.blueflower.stapel2d.gamestack.TranslationManager (io.blueflower.stapel2d.gamestack.TranslationManager)
.class public interface abstract Lio/blueflower/stapel2d/gamestack/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"

# interfaces
.implements Lio/blueflower/stapel2d/gamestack/Translator;


# virtual methods
.method public abstract getDefaultLocale()Ljava/util/Locale;
.end method

.method public abstract getEffectiveLocale()Ljava/util/Locale;
.end method

.method public abstract getSelectedLocale()Ljava/util/Locale;
.end method

.method public abstract setLanguage(Ljava/util/Locale;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method
