.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mContext:Landroid/content/Context;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroidx/preference/PreferenceScreen;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_config_sim"

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 70
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 71
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    .line 78
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    .line 79
    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 107
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    .line 327
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 329
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;I)V

    aput-object v1, v0, p1

    .line 256
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private isCallStateIdle()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 359
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 360
    aget v3, v3, v1

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCallStateIdle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateActivitesCategory()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method private updateCallValues()V
    .locals 5

    const-string v0, "sim_calls"

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 203
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f1203b7

    .line 205
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    if-nez v2, :cond_0

    .line 207
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120db2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 206
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateCellularDataValues()V
    .locals 6

    const-string v0, "sim_cellular_data"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const v2, 0x7f1203f1

    .line 180
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ril.cdma.inecmmode"

    .line 184
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v5, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    move v3, v5

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    const v1, 0x7f120de7

    .line 191
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 193
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v5, :cond_2

    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    move v3, v5

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 150
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 151
    check-cast v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 4

    const-string v0, "sim_sms"

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const v2, 0x7f120dff

    .line 165
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    const v1, 0x7f120de7

    .line 172
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSubscriptions()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 118
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 120
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 125
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 127
    :goto_1
    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 129
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 131
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 133
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x58

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const v0, 0x7f15009c

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    const-string p1, "sim_cards"

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroidx/preference/PreferenceScreen;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/sim/SimSelectNotification;->cancelSimSelectNotification(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 231
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const-string v0, "phone"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    move v2, v1

    .line 234
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 236
    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 263
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    instance-of v2, p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    check-cast p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result p1

    const-string v0, "slot_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "sim_cellular_data"

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 270
    sget-object p0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v2, "sim_calls"

    .line 272
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 273
    sget-object p0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "sim_sms"

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-ne p0, p1, :cond_3

    .line 276
    sget-object p0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 5

    .line 214
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 219
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "SimSettings"

    const-string v2, "Register for call state change"

    .line 220
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 221
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 223
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
