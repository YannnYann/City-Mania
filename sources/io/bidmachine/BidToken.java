package io.bidmachine;

import io.bidmachine.ExpirationHandler;
import io.bidmachine.utils.task.CancelableTask;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class BidToken implements ExpirationHandler.Listener {
    private final AdRequest<?, ?, ?> adRequest;
    private final ExpirationHandler expirationHandler;
    private final ExpirationListener<BidToken> expirationListener;
    private final String id = UUID.randomUUID().toString();

    public static class b implements ExpirationHandler.TaskScheduler {
        public b() {
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void cancelTask(CancelableTask cancelableTask) {
            BidTokenTaskManager.cancel(cancelableTask);
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void scheduleTask(CancelableTask cancelableTask, long j) {
            BidTokenTaskManager.schedule(cancelableTask, j, TimeUnit.MILLISECONDS);
        }
    }

    public BidToken(AdRequest<?, ?, ?> adRequest, int i, ExpirationListener<BidToken> expirationListener) {
        this.adRequest = adRequest;
        this.expirationHandler = new ExpirationHandler(TimeUnit.SECONDS.toMillis(i), this, new b());
        this.expirationListener = expirationListener;
    }

    public void destroyAdRequest() {
        this.adRequest.clearNetworkAdUnits();
        this.adRequest.destroy();
    }

    public AdRequest<?, ?, ?> getAdRequest() {
        return this.adRequest;
    }

    public String getId() {
        return this.id;
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        this.expirationListener.onExpired(this);
    }

    public void startExpiration() {
        this.expirationHandler.start();
    }

    public void stopExpiration() {
        this.expirationHandler.stop();
    }
}
