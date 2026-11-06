package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum EventTaskType implements KeyHolder {
    Track("track"),
    Open("open"),
    NotifyOpen("notify_open"),
    Skip("skip"),
    Close("close"),
    Mute("mute"),
    UnMute("unmute"),
    Repeat("repeat"),
    Show("show"),
    Hide("hide"),
    Progress("progress"),
    Schedule("schedule"),
    Start("start"),
    LockVisibility("lock_visibility"),
    UnlockVisibility("unlock_visibility"),
    SimulateClick("simulate_click"),
    OpenPrivacySheet("open_privacy_sheet"),
    ToggleStateGroups("toggle_state_groups"),
    Expand("expand"),
    Collapse("collapse"),
    RequestPermission("request_permission"),
    ReportClick("report_click"),
    Play("play"),
    Pause("pause"),
    ChangeLayout("change_layout"),
    ChangeActivity("change_activity");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    EventTaskType(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
