package info.flowersoft.theotown.components.coverage;

import com.badlogic.gdx.utils.IntIntMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class CoverageCalculator {
    public final Aspect[] aspects;
    public City city;
    public final CoverageResult[] coverageResults;
    public final ExecutorService pool = Executors.newFixedThreadPool(4);

    public CoverageCalculator() {
        int[] iArr = CoverageAspect.values;
        this.aspects = new Aspect[iArr.length];
        this.coverageResults = new CoverageResult[iArr.length];
        for (int i : iArr) {
            this.coverageResults[i] = new CoverageResult();
        }
    }

    public final void createAspects() {
        this.aspects[0] = new LowEducationAspect(this.city);
        this.aspects[1] = new HighEducationAspect(this.city);
        this.aspects[2] = new HealthCareAspect(this.city);
        this.aspects[3] = new WasteDisposalAspect(this.city);
        this.aspects[4] = new BodyDisposalAspect(this.city);
    }

    public void setCity(City city) {
        this.city = city;
        createAspects();
    }

    public final ProviderCandidate newProviderCandidate(float f, Building building, List<ProviderCandidate> list) {
        ProviderCandidate providerCandidateRemove;
        if (list.isEmpty()) {
            providerCandidateRemove = new ProviderCandidate();
        } else {
            providerCandidateRemove = list.remove(list.size() - 1);
        }
        providerCandidateRemove.set(f, building);
        return providerCandidateRemove;
    }

    public void calculate() {
        final CountDownLatch countDownLatch = new CountDownLatch(this.aspects.length);
        for (final int i = 0; i < this.aspects.length; i++) {
            this.pool.execute(new Runnable() { // from class: info.flowersoft.theotown.components.coverage.CoverageCalculator$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CoverageCalculator.m2123$r8$lambda$u7epd4wTbC5TGmyTRzXvPWJB_c(this.f$0, i, countDownLatch);
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$u7epd4wTbC5TGmyTR-zXvPWJB_c, reason: not valid java name */
    public static /* synthetic */ void m2123$r8$lambda$u7epd4wTbC5TGmyTRzXvPWJB_c(CoverageCalculator coverageCalculator, int i, CountDownLatch countDownLatch) {
        coverageCalculator.getClass();
        try {
            coverageCalculator.calculateAspect(i);
        } finally {
            countDownLatch.countDown();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0155 A[PHI: r3 r4 r17
      0x0155: PHI (r3v10 int) = (r3v9 int), (r3v9 int), (r3v12 int) binds: [B:40:0x0107, B:42:0x0116, B:102:0x0155] A[DONT_GENERATE, DONT_INLINE]
      0x0155: PHI (r4v20 info.flowersoft.theotown.util.SafeListAccessor) = 
      (r4v19 info.flowersoft.theotown.util.SafeListAccessor)
      (r4v19 info.flowersoft.theotown.util.SafeListAccessor)
      (r4v22 info.flowersoft.theotown.util.SafeListAccessor)
     binds: [B:40:0x0107, B:42:0x0116, B:102:0x0155] A[DONT_GENERATE, DONT_INLINE]
      0x0155: PHI (r17v5 int) = (r17v4 int), (r17v7 int), (r17v7 int) binds: [B:40:0x0107, B:42:0x0116, B:102:0x0155] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void calculateAspect(int r22) {
        /*
            Method dump skipped, instruction units count: 531
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.coverage.CoverageCalculator.calculateAspect(int):void");
    }

    public final int calculateReachedAmount(Aspect aspect, int i, Building building, Iterable<Building> iterable, Queue<ProviderCandidate> queue, IntIntMap intIntMap, int i2, boolean z, int[] iArr, List<ProviderCandidate> list) {
        int iNeededAmount = aspect.neededAmount(building);
        int iReachedAmount = aspect.reachedAmount(building);
        if (z) {
            iReachedAmount = iNeededAmount - building.getTempUsedAspectAmount(i);
        }
        if (iReachedAmount > 0) {
            if (z) {
                for (Building building2 : iterable) {
                    if (building != building2) {
                        queue.add(newProviderCandidate(this.city.getDistance().get(building, building2), building2, list));
                    }
                }
            } else {
                for (Building building3 : iterable) {
                    if (building != building3) {
                        int i3 = this.city.getDistance().get(building, building3);
                        if (i3 <= aspect.providedRadius(building3)) {
                            queue.add(newProviderCandidate(i3, building3, list));
                        }
                        if (((building3.getX() - building.getX()) - building.getWidth()) + 1 > i2) {
                            break;
                        }
                    }
                }
            }
            if (!queue.isEmpty() || z) {
                Building building4 = !queue.isEmpty() ? queue.peek().building : null;
                int i4 = 0;
                while (!queue.isEmpty() && iReachedAmount > 0) {
                    ProviderCandidate providerCandidatePoll = queue.poll();
                    list.add(providerCandidatePoll);
                    Building building5 = providerCandidatePoll.building;
                    int iProvidedAmount = aspect.providedAmount(building5);
                    int i5 = intIntMap.get(building5.hashCode(), 0);
                    int iMin = Math.min(i5 + iReachedAmount, iProvidedAmount) - Math.min(i5, iProvidedAmount);
                    iReachedAmount -= iMin;
                    intIntMap.put(building5.hashCode(), i5 + iMin);
                    i4 += iMin;
                }
                list.addAll(queue);
                queue.clear();
                if (z && iReachedAmount > 0) {
                    for (int i6 = 0; i6 < iArr.length && iReachedAmount > 0; i6++) {
                        int i7 = iArr[i6];
                        if (i7 < 0) {
                            int iMin2 = Math.min(iReachedAmount, -i7);
                            iReachedAmount -= iMin2;
                            iArr[i6] = iArr[i6] + iMin2;
                            i4 += iMin2;
                        }
                    }
                }
                if (iReachedAmount > 0 && building4 != null) {
                    intIntMap.put(building4.hashCode(), intIntMap.get(building4.hashCode(), 0) + iReachedAmount);
                }
                return i4;
            }
        }
        return 0;
    }

    public float getCoverage(int i) {
        return this.coverageResults[i].neededAmount > 0 ? Math.min(r3.providedAmount, r3.reachedAmount) / r3.neededAmount : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public float getInRangeCoverage(int i) {
        return this.coverageResults[i].reachedAmount > 0 ? Math.min(r3.providedAmount, r0) / r3.reachedAmount : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public int getNativeProvidedAmount(int i) {
        return this.coverageResults[i].nativeProvidedAmount;
    }

    public int getNativeNeededAmount(int i) {
        return this.coverageResults[i].nativeNeededAmount;
    }

    public int getProvidedAmount(int i) {
        return this.coverageResults[i].providedAmount;
    }

    public int getNeededAmount(int i) {
        return this.coverageResults[i].neededAmount;
    }

    public int getReachedAmount(int i) {
        return this.coverageResults[i].reachedAmount;
    }

    public int countProvidingBuildings(int i) {
        return this.coverageResults[i].providingBuildings;
    }

    public int countNeedingBuildings(int i) {
        return this.coverageResults[i].needingBuildings;
    }

    public Aspect getAspectFor(int i) {
        return this.aspects[i];
    }

    public static final class CoverageResult {
        public int nativeNeededAmount;
        public int nativeProvidedAmount;
        public int neededAmount;
        public int needingBuildings;
        public int providedAmount;
        public int providingBuildings;
        public int reachedAmount;

        public CoverageResult() {
        }
    }

    public static final class ProviderCandidate implements Comparable<ProviderCandidate> {
        public Building building;
        public float distance;

        public ProviderCandidate() {
        }

        public void set(float f, Building building) {
            this.distance = f;
            this.building = building;
        }

        @Override // java.lang.Comparable
        public int compareTo(ProviderCandidate providerCandidate) {
            return Math.round(Math.signum(this.distance - providerCandidate.distance));
        }
    }
}
