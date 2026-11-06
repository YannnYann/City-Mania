package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.util.SSP;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class Features {
    public static Features instance;
    public final MyDraftResolver FEATURE_AIRPORT;
    public final MyDraftResolver FEATURE_BUILDINGS00;
    public final MyDraftResolver FEATURE_BUILDINGS01;
    public final MyDraftResolver FEATURE_BUILDINGS02;
    public final MyDraftResolver FEATURE_CHRISTMAS00;
    public final MyDraftResolver FEATURE_CHRISTMAS_PACK00;
    public final MyDraftResolver FEATURE_DECO;
    public final MyDraftResolver FEATURE_DIAMONDS00;
    public final MyDraftResolver FEATURE_DIAMONDS01;
    public final MyDraftResolver FEATURE_DIAMONDS02;
    public final MyDraftResolver FEATURE_DIAMONDS03;
    public final MyDraftResolver FEATURE_DIAMONDS04;
    public final MyDraftResolver FEATURE_DIAMONDS05;
    public final MyDraftResolver FEATURE_DIAMONDS06;
    public final MyDraftResolver FEATURE_DIAMONDS07;
    public final MyDraftResolver FEATURE_DIAMOND_PROMOTION;
    public final MyDraftResolver FEATURE_DONATE;
    public final MyDraftResolver FEATURE_FIREWORK00;
    public final MyDraftResolver FEATURE_FIREWORK_PACK00;
    public final MyDraftResolver FEATURE_FREEDOMBUILDINGS00;
    public final MyDraftResolver FEATURE_FREEFASTSPEED00;
    public final MyDraftResolver FEATURE_FREETUNNELS00;
    public final MyDraftResolver FEATURE_GET_MONEY;
    public final MyDraftResolver FEATURE_LANDMARKS01;
    public final MyDraftResolver FEATURE_MILITARY;
    public final MyDraftResolver FEATURE_NO_ADS;
    public final MyDraftResolver FEATURE_PREMIUM;
    public final MyDraftResolver FEATURE_SERVICES;
    public final MyDraftResolver FEATURE_SLIME00;
    public final MyDraftResolver FEATURE_SLOWSPEED;
    public final MyDraftResolver FEATURE_STARTER_PACK00;
    public final MyDraftResolver FEATURE_TIME00;
    public final MyDraftResolver FEATURE_TIME01;
    public final MyDraftResolver FEATURE_TIME02;
    public final MyDraftResolver FEATURE_TOURISM;
    public final MyDraftResolver FEATURE_VALENTINESDAY00;
    public List<MyDraftResolver> draftResolvers = new ArrayList();
    public final MyDraftResolver[] FEATURE_GET_RANK = new MyDraftResolver[10];

    public Features() {
        this.FEATURE_NO_ADS = new MyDraftResolver("$feature_noads00");
        this.FEATURE_MILITARY = new MyDraftResolver("$feature_military00");
        this.FEATURE_AIRPORT = new MyDraftResolver("$feature_airport00");
        this.FEATURE_BUILDINGS00 = new MyDraftResolver("$feature_buildings00");
        this.FEATURE_BUILDINGS01 = new MyDraftResolver("$feature_buildings01");
        this.FEATURE_BUILDINGS02 = new MyDraftResolver("$feature_buildings02");
        this.FEATURE_SERVICES = new MyDraftResolver("$feature_services00");
        this.FEATURE_TOURISM = new MyDraftResolver("$feature_tourism00");
        this.FEATURE_PREMIUM = new MyDraftResolver("$feature_premium00");
        this.FEATURE_GET_MONEY = new MyDraftResolver("$feature_money00");
        int i = 0;
        while (true) {
            MyDraftResolver[] myDraftResolverArr = this.FEATURE_GET_RANK;
            if (i < myDraftResolverArr.length) {
                myDraftResolverArr[i] = new MyDraftResolver("$feature_rank0" + i);
                i++;
            } else {
                this.FEATURE_DONATE = new MyDraftResolver("$feature_donate00");
                this.FEATURE_DIAMONDS00 = new MyDraftResolver("$feature_diamonds00");
                this.FEATURE_DIAMONDS01 = new MyDraftResolver("$feature_diamonds01");
                this.FEATURE_DIAMONDS02 = new MyDraftResolver("$feature_diamonds02");
                this.FEATURE_DIAMONDS03 = new MyDraftResolver("$feature_diamonds03");
                this.FEATURE_DIAMONDS04 = new MyDraftResolver("$feature_diamonds04");
                this.FEATURE_DIAMONDS05 = new MyDraftResolver("$feature_diamonds05");
                this.FEATURE_DIAMONDS06 = new MyDraftResolver("$feature_diamonds06");
                this.FEATURE_DIAMONDS07 = new MyDraftResolver("$feature_diamonds07");
                this.FEATURE_DIAMOND_PROMOTION = new MyDraftResolver("$feature_diamond_promotion00");
                this.FEATURE_DECO = new MyDraftResolver("$feature_deco00");
                this.FEATURE_SLOWSPEED = new MyDraftResolver("$feature_slowspeed00");
                this.FEATURE_TIME00 = new MyDraftResolver("$feature_time00");
                this.FEATURE_TIME01 = new MyDraftResolver("$feature_time01");
                this.FEATURE_TIME02 = new MyDraftResolver("$feature_time02");
                this.FEATURE_SLIME00 = new MyDraftResolver("$feature_slime00");
                this.FEATURE_FREETUNNELS00 = new MyDraftResolver("$feature_freetunnels00");
                this.FEATURE_FREEFASTSPEED00 = new MyDraftResolver("$feature_freefastspeed00");
                this.FEATURE_CHRISTMAS00 = new MyDraftResolver("$feature_christmas00");
                this.FEATURE_FIREWORK00 = new MyDraftResolver("$feature_firework00");
                this.FEATURE_VALENTINESDAY00 = new MyDraftResolver("$feature_valentinesday00");
                this.FEATURE_FREEDOMBUILDINGS00 = new MyDraftResolver("$feature_freedombuildings00");
                this.FEATURE_LANDMARKS01 = new MyDraftResolver("$feature_landmarks01");
                this.FEATURE_STARTER_PACK00 = new MyDraftResolver("$feature_starter_pack00");
                this.FEATURE_CHRISTMAS_PACK00 = new MyDraftResolver("$feature_christmas_pack00");
                this.FEATURE_FIREWORK_PACK00 = new MyDraftResolver("$feature_firework_pack00");
                return;
            }
        }
    }

    public synchronized void load() {
        SSP.Reader readerLoad = new SSP("info.flowersoft.theotown.theotown.features").load();
        for (int i = 0; i < this.draftResolvers.size(); i++) {
            MyDraftResolver myDraftResolver = this.draftResolvers.get(i);
            myDraftResolver.count = readerLoad.getInt(myDraftResolver.id + "_count", 0);
            myDraftResolver.lastBought = readerLoad.getLong(myDraftResolver.id + "_last", 0L);
        }
    }

    public boolean isProbablyTestUser() {
        return this.FEATURE_DIAMONDS05.count > 10 || this.FEATURE_DIAMONDS06.count > 2 || this.FEATURE_DIAMONDS07.count > 2;
    }

    public static void dispose() {
        instance = null;
    }

    public static Features getInstance() {
        if (instance == null) {
            instance = new Features();
        }
        return instance;
    }

    public boolean canUnlockRank(City city, RankDraft rankDraft) {
        RankDraft rank = city.getRank();
        int i = rankDraft.ordinal;
        int i2 = rank.ordinal;
        return i > i2 && i - i2 <= this.FEATURE_GET_RANK.length && (city.getComponent(11) instanceof DefaultRequirement) && !city.isTutorial();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FeatureDraft getUnlockRankFeature(City city, RankDraft rankDraft) {
        int i = ((DefaultRequirement) city.getComponent(11)).getNewRank().ordinal;
        int i2 = rankDraft.ordinal;
        if (i >= i2) {
            return null;
        }
        int i3 = i2 - i;
        MyDraftResolver[] myDraftResolverArr = this.FEATURE_GET_RANK;
        if (i3 > myDraftResolverArr.length) {
            return null;
        }
        return (FeatureDraft) myDraftResolverArr[(i2 - i) - 1].get();
    }

    public class MyDraftResolver extends DraftResolver<FeatureDraft> {
        public int count;
        public String id;
        public long lastBought;

        public MyDraftResolver(String str) {
            super(str);
            this.id = str;
            Features.this.draftResolvers.add(this);
        }
    }
}
