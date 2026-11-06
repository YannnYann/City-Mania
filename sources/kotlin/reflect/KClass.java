package kotlin.reflect;

/* JADX INFO: compiled from: KClass.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface KClass<T> extends KDeclarationContainer, KAnnotatedElement, KClassifier {
    String getQualifiedName();

    String getSimpleName();

    int hashCode();
}
