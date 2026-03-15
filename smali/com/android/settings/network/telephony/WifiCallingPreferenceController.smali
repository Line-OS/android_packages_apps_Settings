.class public Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "WifiCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;
    }
.end annotation


# static fields
.field static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "calling_category"


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mImsManager:Lcom/android/ims/ImsManager;

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field mSimCallManager:Landroid/telecom/PhoneAccountHandle;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 68
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    new-instance p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "calling_category"

    .line 100
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWifiCallingEnabled(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public init(I)V
    .locals 1

    .line 162
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 163
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 164
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    .line 165
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 166
    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->register(I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->unregister()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 109
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 118
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 119
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f121108

    .line 124
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x104077f

    .line 127
    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_2

    .line 130
    iget v4, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 131
    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "use_wfc_home_network_mode_in_roaming_network_bool"

    .line 133
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    .line 138
    :goto_0
    iget-object v4, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    .line 139
    iget-object v5, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x1040759

    goto :goto_2

    :cond_5
    const v0, 0x1040757

    goto :goto_2

    :cond_6
    const v0, 0x1040758

    .line 155
    :cond_7
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 157
    :goto_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 158
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    .line 157
    :goto_4
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
