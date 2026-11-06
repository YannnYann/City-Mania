package kotlinx.coroutines.flow;

/* JADX INFO: compiled from: SharingStarted.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface SharingStarted {
    public static final Companion Companion = Companion.$$INSTANCE;

    Flow<SharingCommand> command(StateFlow<Integer> stateFlow);

    /* JADX INFO: compiled from: SharingStarted.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final SharingStarted Eagerly = new StartedEagerly();
        public static final SharingStarted Lazily = new StartedLazily();

        public final SharingStarted getEagerly() {
            return Eagerly;
        }

        public final SharingStarted getLazily() {
            return Lazily;
        }
    }
}
