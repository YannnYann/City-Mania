package info.flowersoft.theotown.components.traffic;

import info.flowersoft.theotown.city.Parcel;
import java.util.AbstractQueue;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public final class ParcelPriorityQueue extends AbstractQueue<Parcel> {
    public static final Comparator<Parcel> parcelComparator = new Comparator() { // from class: info.flowersoft.theotown.components.traffic.ParcelPriorityQueue$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ParcelPriorityQueue.$r8$lambda$LaBU3LMHISRbVIZ5EQW48fVuyM8((Parcel) obj, (Parcel) obj2);
        }
    };
    public final Queue<Parcel> q = new PriorityQueue(16, parcelComparator);
    public final List<Parcel> lStack = new ArrayList();

    public static /* synthetic */ int $r8$lambda$LaBU3LMHISRbVIZ5EQW48fVuyM8(Parcel parcel, Parcel parcel2) {
        return parcel.distance - parcel2.distance;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // java.util.Queue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean offer(info.flowersoft.theotown.city.Parcel r5) {
        /*
            r4 = this;
            java.util.List<info.flowersoft.theotown.city.Parcel> r0 = r4.lStack
            boolean r0 = r0.isEmpty()
            r1 = 1
            if (r0 != 0) goto L23
            int r0 = r5.distance
            java.util.List<info.flowersoft.theotown.city.Parcel> r2 = r4.lStack
            int r3 = r2.size()
            int r3 = r3 - r1
            java.lang.Object r2 = r2.get(r3)
            info.flowersoft.theotown.city.Parcel r2 = (info.flowersoft.theotown.city.Parcel) r2
            int r2 = r2.distance
            if (r0 > r2) goto L1d
            goto L23
        L1d:
            java.util.Queue<info.flowersoft.theotown.city.Parcel> r0 = r4.q
            r0.offer(r5)
            goto L28
        L23:
            java.util.List<info.flowersoft.theotown.city.Parcel> r0 = r4.lStack
            r0.add(r5)
        L28:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.traffic.ParcelPriorityQueue.offer(info.flowersoft.theotown.city.Parcel):boolean");
    }

    @Override // java.util.Queue
    public Parcel poll() {
        if (!this.lStack.isEmpty()) {
            Parcel parcel = this.lStack.get(r0.size() - 1);
            if (!this.q.isEmpty() && this.q.peek().distance < parcel.distance) {
                return this.q.poll();
            }
            return this.lStack.remove(r0.size() - 1);
        }
        return this.q.poll();
    }

    @Override // java.util.Queue
    public Parcel peek() {
        if (!this.lStack.isEmpty()) {
            Parcel parcel = this.lStack.get(r0.size() - 1);
            if (!this.q.isEmpty()) {
                Parcel parcelPeek = this.q.peek();
                if (parcelPeek.distance < parcel.distance) {
                    return parcelPeek;
                }
            }
            return parcel;
        }
        return this.q.peek();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Parcel> iterator() {
        throw new UnsupportedOperationException("Parcel priority queue cannot iterate");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.lStack.size() + this.q.size();
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.lStack.clear();
        this.q.clear();
    }
}
