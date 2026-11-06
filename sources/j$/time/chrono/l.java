package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface l extends Comparable {
    InterfaceC4273b A(int i, int i2);

    List D();

    InterfaceC4273b G(int i, int i2, int i3);

    InterfaceC4273b L();

    m N(int i);

    InterfaceC4273b P(Map map, j$.time.format.x xVar);

    String R();

    j$.time.temporal.x U(j$.time.temporal.a aVar);

    boolean equals(Object obj);

    int hashCode();

    InterfaceC4273b q(long j);

    String s();

    InterfaceC4273b t(j$.time.temporal.n nVar);

    String toString();

    int w(m mVar, int i);

    ChronoZonedDateTime y(Instant instant, j$.time.x xVar);

    static l F(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        l lVar = (l) nVar.a(j$.time.temporal.t.a());
        s sVar = s.d;
        if (lVar != null) {
            return lVar;
        }
        Objects.requireNonNull(sVar, "defaultObj");
        return sVar;
    }

    default InterfaceC4276e x(LocalDateTime localDateTime) {
        try {
            return t(localDateTime).K(j$.time.k.J(localDateTime));
        } catch (j$.time.c e) {
            throw new j$.time.c("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }
}
