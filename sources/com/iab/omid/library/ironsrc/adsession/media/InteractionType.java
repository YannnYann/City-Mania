package com.iab.omid.library.ironsrc.adsession.media;

import com.ironsource.C3540c4;

/* JADX INFO: loaded from: classes3.dex */
public enum InteractionType {
    CLICK(C3540c4.d),
    INVITATION_ACCEPTED("invitationAccept");

    String interactionType;

    InteractionType(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.interactionType;
    }
}
